import re
import logging

class ALN:
    logging.basicConfig(level=logging.INFO)
    logger = logging.getLogger("accuracy_alns")

    def __init__(self, agency, program=None):
        self.agency = agency
        self.program = program

    def __repr__(self):
        if self.program:
            return f"{self.agency}.{self.program}"
        else:
            return f"{self.agency}"

    def __str__(self):
        return self.__repr__()

    def __eq__(self, other):
        return (self.agency == other.agency
                and self.program == other.program)

    def __hash__(self):
        return hash(str(self))

    def streq(self, string_aln):
        parts = string_aln.split(".")
        return (self.agency == parts[0]
                and self.program == parts[1])

    def is_valid(self):
        return (
            self.is_all_numeric()
            or self.is_u_program()
            or self.is_rd_program()
            or self.is_gsa_migration()
            or self.is_alpha_program()
        )
    def category(self):
        if self.is_all_numeric():
            return "NUMERIC"
        elif self.is_u_program():
            return "U"
        elif self.is_rd_program():
            return "RD"
        elif self.is_alpha_program():
            return "ALPHA"
        elif self.is_gsa_migration():
            return "GSA"
        else:
            ALN.logger(f"UNK ALN: {self.agency} {self.program}")
            return "UNK"

    def is_numeric_agency(self):
        try:
            int(self.agency)
            return True
        except:
            return False

    def is_numeric_program(self):
        try:
            int(self.program)
            return True
        except:
            return False

    def is_all_numeric(self):
        return self.is_numeric_agency() and self.is_numeric_program()

    def is_u_program(self):
        return self.is_numeric_agency() and bool(re.match(r"^U[0-9]{2}$", self.program))

    def is_rd_program(self):
        return self.is_numeric_agency() and bool(re.match(r"^RD([0-9]{1})?$", self.program))

    def is_gsa_migration(self):
        return self.is_numeric_agency() and bool(re.match(r"^GSA_MIGRATION$", self.program))

    def is_alpha_program(self):
        return (
            self.is_numeric_agency()
            and bool(re.match("^[0-9]{2}$", self.agency)) 
            and bool(re.match("^[0-9]{3}([A-Z])?$", self.program)))

######################################
# TESTS
######################################
    
def test_is_numeric_agency():
    assert ALN("10", "ABC").is_numeric_agency() is True
    assert ALN("AB", "ABC").is_numeric_agency() is False

numeric_programs_valid = [
    ALN("10", "123"),
    ALN("10", "000")
]
numeric_programs_invalid = [
    ALN("10", "ABC"),
    ALN("AB", "ABC")
]
def test_is_numeric_program():
    for aln in numeric_programs_valid:
        assert aln.is_numeric_program() is True
    for aln in numeric_programs_invalid:
        assert aln.is_numeric_program() is False

rd_alns_valid = [
    ALN("93", "RD"),
    ALN("93", "RD1")
]
def test_is_rd_program():
    for aln in rd_alns_valid:
        assert aln.is_rd_program() is True

def test_validity():
    for aln in rd_alns_valid:
        assert aln.is_valid() is True
    for aln in numeric_programs_valid:
        assert aln.is_valid() is True
    for aln in numeric_programs_invalid:
        assert aln.is_valid() is False
    assert ALN("11", "123").is_valid() is True
    assert ALN("92", "RD1").is_valid() is True
    assert ALN("92", "RD").is_valid() is True
    assert ALN("92", "RDX").is_valid() is False
    assert ALN("84", "483A").is_valid() is True
    assert ALN("84", "483AB").is_valid() is False
    assert ALN("84", "48A").is_valid() is False
    assert ALN("21", "U23").is_valid() is True
    assert ALN("45", "GSA_MIGRATION").is_valid() is True
