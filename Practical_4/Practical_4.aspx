<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="Practical_4.aspx.cs"
    Inherits="Practical_4.WebForm1"
    UnobtrusiveValidationMode="None" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Online Event Registration</title>
</head>

<body>

<form id="form1" runat="server">

    <h1>ONLINE EVENT REGISTRATION</h1>

    <div>
        Full Name
        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>

        <asp:RequiredFieldValidator
            ID="rfvName"
            runat="server"
            ControlToValidate="txtName"
            ErrorMessage="Full Name is required"
            ForeColor="Red">
        </asp:RequiredFieldValidator>
    </div>

    <div>
        Email Id
        <asp:TextBox
            ID="txtEmail"
            runat="server"
            TextMode="Email">
        </asp:TextBox>

        <asp:RequiredFieldValidator
            ID="rfvEmail"
            runat="server"
            ControlToValidate="txtEmail"
            ErrorMessage="Email Id is required"
            ForeColor="Red">
        </asp:RequiredFieldValidator>
    </div>

    <div>
        Contact No
        <asp:TextBox
            ID="txtContact"
            runat="server">
        </asp:TextBox>

        <asp:RequiredFieldValidator
            ID="rfvContact"
            runat="server"
            ControlToValidate="txtContact"
            ErrorMessage="Contact No is required"
            ForeColor="Red">
        </asp:RequiredFieldValidator>
    </div>

    <div>
        College Name
        <asp:TextBox
            ID="txtCollege"
            runat="server">
        </asp:TextBox>

        <asp:RequiredFieldValidator
            ID="rfvCollege"
            runat="server"
            ControlToValidate="txtCollege"
            ErrorMessage="College Name is required"
            ForeColor="Red">
        </asp:RequiredFieldValidator>
    </div>

    <div>
        Department
        <br />

        <asp:RadioButton
            ID="rdoComputer"
            runat="server"
            GroupName="Department"
            Text="Computer" />

        <br />

        <asp:RadioButton
            ID="rdoMechanical"
            runat="server"
            GroupName="Department"
            Text="Mechanical" />

        <br />

        <asp:RadioButton
            ID="rdoChemical"
            runat="server"
            GroupName="Department"
            Text="Chemical" />

        <br />

        <asp:RadioButton
            ID="rdoCivil"
            runat="server"
            GroupName="Department"
            Text="Civil" />
    </div>

    <div>
        Event

        <asp:DropDownList
            ID="ddlEvent"
            runat="server">

            <asp:ListItem
                Text="Select Event"
                Value="">
            </asp:ListItem>

            <asp:ListItem
                Text="Hackathon"
                Value="Hackathon">
            </asp:ListItem>

            <asp:ListItem
                Text="Coding Competition"
                Value="Coding Competition">
            </asp:ListItem>

            <asp:ListItem
                Text="Tech Fest"
                Value="Tech Fest">
            </asp:ListItem>

            <asp:ListItem
                Text="Workshop"
                Value="Workshop">
            </asp:ListItem>

        </asp:DropDownList>
    </div>

    <div>
        Gender

        <asp:RadioButton
            ID="rdoMale"
            runat="server"
            GroupName="Gender"
            Text="Male" />

        <asp:RadioButton
            ID="rdoFemale"
            runat="server"
            GroupName="Gender"
            Text="Female" />
    </div>

    <div>
        Skills
        <br />

        <asp:CheckBox
            ID="chkCSharp"
            runat="server"
            Text="C#" />

        &nbsp;&nbsp;

        <asp:CheckBox
            ID="chkPython"
            runat="server"
            Text="Python" />

        &nbsp;&nbsp;

        <asp:CheckBox
            ID="chkAI"
            runat="server"
            Text="AI" />
    </div>

    <br />

    <div>
        Address

        <asp:TextBox
            ID="txtAddress"
            runat="server"
            TextMode="MultiLine"
            Rows="3">
        </asp:TextBox>
    </div>

    <div>
        Terms

        <asp:CheckBox
            ID="chkTerms"
            runat="server"
            Text="I accept Terms & Conditions" />
    </div>

    <div>
        <asp:Button
            ID="btnSubmit"
            runat="server"
            Text="Submit"
            OnClick="btnSubmit_Click" />
    </div>

    <br />

    <asp:Panel
        ID="pnlResult"
        runat="server"
        Visible="false">

        <h2>Registration Details</h2>

        <p>
            <b>Full Name:</b>
            <asp:Label ID="lblName" runat="server"></asp:Label>
        </p>

        <p>
            <b>Email Id:</b>
            <asp:Label ID="lblEmail" runat="server"></asp:Label>
        </p>

        <p>
            <b>Contact No.:</b>
            <asp:Label ID="lblContact" runat="server"></asp:Label>
        </p>

        <p>
            <b>College:</b>
            <asp:Label ID="lblCollege" runat="server"></asp:Label>
        </p>

        <p>
            <b>Department:</b>
            <asp:Label ID="lblDepartment" runat="server"></asp:Label>
        </p>

        <p>
            <b>Event:</b>
            <asp:Label ID="lblEvent" runat="server"></asp:Label>
        </p>

        <p>
            <b>Gender:</b>
            <asp:Label ID="lblGender" runat="server"></asp:Label>
        </p>

        <p>
            <b>Skills:</b>
            <asp:Label ID="lblSkills" runat="server"></asp:Label>
        </p>

        <p>
            <b>Address:</b>
            <asp:Label ID="lblAddress" runat="server"></asp:Label>
        </p>

        <p>
            <b>Terms & Conditions:</b>
            <asp:Label ID="lblTerms" runat="server"></asp:Label>
        </p>

    </asp:Panel>

</form>

</body>
</html>