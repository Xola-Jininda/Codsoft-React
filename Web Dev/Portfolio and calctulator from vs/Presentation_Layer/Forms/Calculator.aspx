<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Calculator.aspx.cs" Inherits="MyPortfolio.Presentation_Layer.Forms.Calculator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="../Styles/Calculator.css" rel="stylesheet" />
    <title>Calculator</title>
    <style>
        /* Calculator.css */

        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            font-family: 'Arial', sans-serif;
            background-color: #f0f0f0;
        }

        .calculator {
            background-color: #333;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }

        .display {
            width: 100%;
            height: 50px;
            background-color: #444;
            color: black;
            border: none;
            border-radius: 5px;
            padding: 4px;
            font-size: 1.5em;
            text-align: right;
            margin-bottom: 10px;
        }

        .keys {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 10px;
        }

        .button {
            width: 100%;
            height: 50px;
            background-color: #666;
            color: #fff;
            border: none;
            border-radius: 5px;
            font-size: 1.2em;
            cursor: pointer;
            transition: background-color 0.3s, transform 0.1s;
        }

        .button:hover {
            background-color: #888;
        }

        .button:active {
            background-color: #555;
            transform: scale(0.95);
        }

        .button.operation {
            background-color: #ff5722;
        }

        .button.operation:hover {
            background-color: #ff7043;
        }

        .button.clear {
            background-color: #d32f2f;
        }

        .button.clear:hover {
            background-color: #e57373;
        }

        .button.equals {
            background-color: #388e3c;
        }

        .button.equals:hover {
            background-color: #4caf50;
        }
        h1 {
            color: #fff;
            margin-bottom: 20px;
            font-size: 2em;
            text-align:center;
            opacity:inherit;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
          <h1>Simple Calculator by Xola Jininda</h1>
        <div class="calculator">
          
            <asp:TextBox ID="display" BackColor="LightGray" runat="server" ReadOnly="true" CssClass="display"></asp:TextBox>
            <div class="keys">
                <asp:Button ID="btnClear" BackColor="Red" ForeColor="White" runat="server" Text="C" OnClick="btnClear_Click" CssClass="button clear" />
                <asp:Button ID="btnSin" runat="server" Text="sin" CssClass="button operation" OnClick="btnOperation_Click" />
                <asp:Button ID="btnCos" runat="server" Text="cos"  CssClass="button operation" OnClick="btnOperation_Click" />
                <asp:Button ID="btnTan" runat="server" Text="tan"  CssClass="button operation" OnClick="btnOperation_Click" />
                <asp:Button ID="btn7" runat="server" Text="7" OnClick="btn_Click" CssClass="button" />
                <asp:Button ID="btn8" runat="server" Text="8" OnClick="btn_Click" CssClass="button" />
                <asp:Button ID="btn9" runat="server" Text="9" OnClick="btn_Click" CssClass="button" />
                <asp:Button ID="btnPlus" runat="server" Text="+" OnClick="btn_Click" CssClass="button operation" />
                <asp:Button ID="btn4" runat="server" Text="4" OnClick="btn_Click" CssClass="button" />
                <asp:Button ID="btn5" runat="server" Text="5" OnClick="btn_Click" CssClass="button" />
                <asp:Button ID="btn6" runat="server" Text="6" OnClick="btn_Click" CssClass="button" />
                <asp:Button ID="btnMinus" runat="server" Text="-" OnClick="btn_Click" CssClass="button operation" />
                <asp:Button ID="btn1" runat="server" Text="1" OnClick="btn_Click" CssClass="button" />
                <asp:Button ID="btn2" runat="server" Text="2" OnClick="btn_Click" CssClass="button" />
                <asp:Button ID="btn3" runat="server" Text="3" OnClick="btn_Click" CssClass="button" />
                <asp:Button ID="btnMultiply" runat="server" Text="*" OnClick="btn_Click" CssClass="button operation" />
                <asp:Button ID="btn0" runat="server" Text="0" OnClick="btn_Click" CssClass="button" />
                <asp:Button ID="btnSqrt" runat="server" Text="√"  CssClass="button operation" OnClick="btnOperation_Click" />
                <asp:Button ID="btnEquals" BackColor="LightGreen" runat="server" Text="=" OnClick="btnEquals_Click" CssClass="button equals" />
                <asp:Button ID="btnDivide" runat="server" Text="/" OnClick="btn_Click" CssClass="button operation" />
            </div>
        </div>
    </form>
</body>
</html>