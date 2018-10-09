<%@ Page Language="C#" Inherits="workChallengeWebForm.Default" CodeBehind="Default"%>
<!DOCTYPE html>
<html>
<head runat="server">
    <title>Employee Registration</title>  
</head>
<body>
	<form id="form1" runat="server">  
        <h3> Employee Registration </h3>
        <div>
<!--                hidden field to represent employee ukey to be inserted into database-->
            <asp:HiddenField id="emoloyeeID" runat="server"/>
<!--                input the last name of the user-->
            <asp:TextBox ID="lastName" Columns="30" MaxLength="20" MinLength="2" Placeholder="Enter Last Name" runat="server"/>  
<!--          input the first name of the user-->
            <asp:TextBox ID="firstName" Columns="30" MaxLength="20" MinLength="2" Placeholder="Enter First Name" runat="server"/>
<!--                input the phone number of the user-->
            <asp:TextBox id="phoneNumber" Columns="30" MaxLength="10" MinLength="10" Placeholder="Enter 10 digit phone #" runat="server"/>
<!--                input the zip code with -->
            <asp:TextBox id="zipCode"  Columns="30" MaxLength="5" MinLength="5" Placeholder="Enter Zip Code" runat="server"/>
<!--        return the current date-->
            <asp:TextBox id="dateHired" Columns="30" MaxLength="10" MinLenght="10" PlaceHolder="Date hired: mm/dd/yyyy" runat="server"/><br/><br/>
<!--        This is where the table goes  -->
            <asp:Label ID="AnswerMessage" runat="server"/>
        </div>
            
<!--            Button will submit form data to the database-->
    <p id="button-container">  
        <asp:Button ID="btnSave" Text="Save" OnClick="Button1Clicked" runat="server"/>
    </p>
<!--            grid view returning data-->
            
<!--            validations to narrate the user's entry in required fields-->
    <div id="validation-container">  
        <asp:RequiredFieldValidator 
                    ID="lastNameRequiredValidator" 
                    ControlToValidate="lastName"  
                    ErrorMessage="Please enter a value for your Last Name.<br />" 
                    Display="Dynamic"
                    ValidationExpression="^\b[a-zA-Z\s_\-]{1,20}$"
                    Type="Text"
                    runat="server"/>  
        <asp:RequiredFieldValidator 
                    ID="firstNameRequiredValidator" 
                    ControlToValidate="firstName"  
                    ErrorMessage="Please enter a value for your First Name.<br />" 
                    Display="Dynamic"
                    Type="Text"
                    ValidationExpression="^\b[a-zA-Z\s_\-]{1,20}$"
                    runat="server"/>
        <asp:RequiredFieldValidator 
                    ID="phoneNumberRequiredValidator" 
                    ControlToValidate="phoneNumber"  
                    ErrorMessage="Please enter a value for your Phone Number.<br />" 
                    Display="Dynamic" 
                    Type="Integer"
                    ValidationExpression="^\b[a-zA-Z\s_\-]{1,20}$"
                    runat="server"/>
        <asp:RequiredFieldValidator 
                    ID="zipCodeRequiredValidator" 
                    ControlToValidate="zipCode"
                    ErrorMessage="Please enter a value for your ZipCode.<br />" 
                    Display="Dynamic"  
                    ValidationExpression="^\b[a-zA-Z\s_\-]{1,20}$"
                    runat="server"/>
        <asp:RequiredFieldValidator 
                    ID="dateRequiredValidator" 
                    ControlToValidate="dateHired"  
                    ErrorMessage="Please enter the current Date.<br />" 
                    Display="Dynamic"  
                    ValidationExpression="^\b[a-zA-Z\s_\-]{1,20}$"
                    runat="server"/>

    </div>
  </form>
</body>
</html>