from peewee import *
from libraries.findings_util import (
    path_based_on_ext
)

proxy = DatabaseProxy()  # Create a proxy for our db.

# We're going to need to cache things.
# So, a local DB makes sense.
# The table design...
# It will pull from General, Findings, and Federal Awards

class DailyMetadata(Model):
    date_retrieved = DateField(null=True)
    queries_used = IntegerField(null=True)
    time_elapsed = IntegerField(null=True)
    time_general = IntegerField(null=True)
    time_findings = IntegerField(null=True)
    time_awards = IntegerField(null=True)
    class Meta:
        database = proxy

class DailyGenerals(Model):
    report_id = TextField(unique=True)  # PK
    auditee_name = TextField()
    auditee_uei = TextField()
    date = DateField()
    date_retrieved = DateField(null=True)
    findings_count = IntegerField(null=True)
    awards_count = IntegerField(null=True)
    cog_over = TextField(null=True)
    class Meta:
        database = proxy


class DailyFindings(Model):
    report_id = TextField()
    auditee_name = TextField()
    auditee_uei = TextField()
    award_reference = TextField(null=True)
    reference_number = TextField(null=True)
    aln = TextField(null=True)
    cog_over = TextField(null=True)
    federal_program_name = TextField(null=True)
    amount_expended = IntegerField(null=True)
    is_direct = BooleanField(null=True)
    is_major = BooleanField(null=True)
    is_passthrough_award = BooleanField(null=True)
    passthrough_amount = IntegerField(null=True)
    is_modified_opinion = BooleanField(null=True)
    is_other_matters = BooleanField(null=True)
    is_material_weakness = BooleanField(null=True)
    is_significant_deficiency = BooleanField(null=True)
    is_other_findings = BooleanField(null=True)
    is_questioned_costs = BooleanField(null=True)
    is_repeat_finding = BooleanField(null=True)
    prior_finding_ref_numbers = TextField(null=True)

    class Meta:
        database = proxy


def get_unique_agency_numbers():
    ans = set()
    for df in DailyFindings.select():
        ans.add(df.aln.split(".")[0])
    return sorted(list(ans))

def get_unique_cog_overs():
    cogs = set()
    for df in DailyFindings.select():
        cogs.add(df.cog_over)
    return sorted(list(cogs))

def setup_database(filename):
    # Set up the SQLite database pro
    db = SqliteDatabase(':memory:')
    proxy.initialize(db)
    db.create_tables([DailyMetadata, DailyGenerals, DailyFindings])
