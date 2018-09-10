tableextension 123456700 "CSD ResourceExt" extends Resource
{
    fields
    {
        modify("Profit %")
        {
            trigger OnAfterValidate()
            begin
                rec.TestField("Unit Cost")
            end;
        }
        field(123456701; "CDS Resource Type"; Option)
        {
            OptionMembers = "Internal", "External";
            OptionCaption = 'Internal,External';
            Caption = 'Internal,External';

        }
        field(123456701; "CDS Maximum Participant"; Integer)
        {
            Caption = 'CDS Maximum Participants';

        }
        field(123456702; "CDS Quantity Per Day"; Decimal)
        {
            Caption = 'CDS Quantity Per Day';
        }
    }

}

