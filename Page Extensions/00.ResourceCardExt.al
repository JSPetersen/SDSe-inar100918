pageextension 123456700 "CSD Resource CardExt" extends "Resource Card"
{
    layout
    {
        addlast(General)
        {

            field("CDS Resource Type"; "CDS Resource Type")
            {

            }

            field("CDS Quantity Per Day"; "CDS Quantity Per Day")
            {


            }
            field("CDS Maximum Participant";"CDS Maximum Participant")
            {

            }
        }
        
        addafter("Personal Data")
        {
            group("CDS Room")
            {
                Visible = ShowMaxField;
                field("CDS Maximum Participant";"CDS Maximum Participant","CDS Maximum Participant")
                {
                    
                }
                
            }
        }
      
    }

    actions
    {
        // Add changes to page actions here
    }
trigger OnAfterGetRecord();
begin
    ShowMaxField := (Type = Type::Machine); CurrPage.Update(false);
    
end;
    var
    [InDataSet]
    ShoxMaxField:Boolean;
    
      
}