<%@ Page Title="" Language="C#" MasterPageFile="~/TTech/TTech.Master" AutoEventWireup="true" CodeBehind="card.aspx.cs" Inherits="ToothTech.TTech.Patient_asses.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentHeader" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">


    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card border border-dark bg-warning">
                    <!-- Adding border classes -->
                    <div class="card-body">
                        <!-- Your content goes here -->
                        <div class="center">
                            <div class="row">
                                <div class="col-auto mt-5">
                                    <!-- Logo -->
                                    <img src="/TTech/assets/logos/sulogo.png" alt="Logo" style="width: 100px; height: auto;">
                                </div>
                                <div class="col">
                                    <!-- Text content -->

                                    <div class="container-fluid">
                                        <div class="row justify-content-end">
                                            <div class="col-auto">
                                                <div class="container">
                                                    <div class="row">
                                                        <div class="col-auto">
                                                            <h6 class="mt-0 mb-0">OPD NO:</h6>
                                                        </div>
                                                        <div class="col-auto">
                                                            <div class="border border-dark text-center mx-auto">
                                                                <h6 class="mt-0 mb-0 mx-2">123456</h6>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row justify-content-start">
                                            <div class="col-auto">
                                                <div class="container">
                                                    <div class="row">
                                                        <div class="col-auto">
                                                            <div class="border border-dark text-center mx-auto">
                                                                <h6 class="mt-0 mb-0 mx-2">Validity: 30 Days</h6>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <h6 class="mb-0">Guru Gobind Singh</h6>
                                    <h1 class="card-title mt-0 mb-0">SUBHARTI DENTAL COLLEGE AND HOSPITAL</h1>
                                    <h3 class="card-subtitle">SWAMI VIVEKANAND SUBHARTI UNIVERSITY</h3>
                                    <p class="card-address mb-0 mt-2">Subhartipuram, NH-58, Delhi-Haridwar Bypass Road, Meerut 250002(INDIA)</p>
                                    <p class="card-contact">Ph. 0121-2439043/52, 6678000, Website: <a href="http://www.subharti.org" target="_blank">www.subharti.org</a>, Email: <a href="mailto:dental@subharti.org">dental@subharti.org</a></p>
                                    <div class="border border-dark text-center mx-auto">
                                        <h1 class="mt-2">ORD-DENTAL HEALTH STATUS RECORD</h1>
                                    </div>

                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MainContentFooter" runat="server">
</asp:Content>
