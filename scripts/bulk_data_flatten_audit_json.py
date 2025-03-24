import pandas as pd
import json
import sys

def flatten_json_column(df, json_column='audit'):
    df[json_column] = df[json_column].apply(lambda x: json.loads(x) if pd.notna(x) else {})

    def flatten_nested_json(json_data, prefix=''):
        items = {}
        for key, value in json_data.items():
            new_key = f"{prefix}_{key}" if prefix else key
            if isinstance(value, dict):
                items.update(flatten_nested_json(value, new_key))
            elif isinstance(value, list):
                if value and isinstance(value[0], dict):
                    for i, item in enumerate(value):
                        items.update(flatten_nested_json(item, f"{new_key}_{i}"))
                else:
                    items[new_key] = str(value)
            else:
                items[new_key] = value
        return items

    flattened_data = df[json_column].apply(lambda x: flatten_nested_json(x))
    flattened_df = pd.DataFrame(flattened_data.tolist(), index=df.index)
    return pd.concat([df.drop(columns=[json_column]), flattened_df], axis=1)

if __name__ == "__main__":
    input_file = sys.argv[1]
    output_file = sys.argv[2]
    df = pd.read_csv(input_file)
    result = flatten_json_column(df)
    result.to_csv(output_file, index=False)
    print(f"✅ Flattened: {output_file}")
