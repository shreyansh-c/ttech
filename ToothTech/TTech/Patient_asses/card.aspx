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
                    <div class="card-body ">
                        <div class="container-fluid">
                            <div class="row justify-content-between mb-5">
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

                        </div>
                        <div class="center">
                            <div class="row">
                                <div class="col-auto mt-5">
                                    <!-- Logo -->
                                    <img src="/TTech/assets/logos/sulogo.png" alt="Logo" style="width: 100px; height: auto;">
                                </div>
                                <div class="col">
                                    <!-- Text content -->
                                    <h6 class="mb-0">Guru Gobind Singh</h6>
                                    <h1 class="card-title mt-0 mb-0">SUBHARTI DENTAL COLLEGE AND HOSPITAL</h1>
                                    <h3 class="card-subtitle">SWAMI VIVEKANAND SUBHARTI UNIVERSITY</h3>
                                    <p class="card-address mb-0 mt-2">Subhartipuram, NH-58, Delhi-Haridwar Bypass Road, Meerut 250002(INDIA)</p>
                                    <p class="card-contact">Ph. 0121-2439043/52, 6678000, Website: <a href="http://www.subharti.org" target="_blank">www.subharti.org</a>, Email: <a href="mailto:dental@subharti.org">dental@subharti.org</a></p>
                                    <div class="border border-dark text-center mx-auto">
                                        <h4 class="mt-2">ORD-DENTAL HEALTH STATUS RECORD</h4>
                                    </div>
                                </div>
                            </div>
                            <%--start personal data--%>
                            <table class="table table-condensed">
                                <tbody>
                                    <tr>
                                        <td><strong>Name:</strong></td>
                                        <td>Rohan Raj Anand</td>
                                        <td><strong>Date:</strong></td>
                                        <td>13/04/2024</td>
                                    </tr>
                                    <tr>
                                        <td><strong>Father's Name:</strong></td>
                                        <td>Shishir Srivastava</td>
                                        <td><strong>Age:</strong></td>
                                        <td>23</td>
                                    </tr>
                                    <tr>
                                        <td><strong>Address:</strong></td>
                                        <td>Kareli, Prayagraj</td>
                                        <td><strong>Sex:</strong></td>
                                        <td>Male</td>
                                    </tr>
                                    <tr>
                                        <td><strong>Phone no:</strong></td>
                                        <td>8364573234</td>
                                        <td><strong>Marital Status:</strong></td>
                                        <td>Unmarried</td>
                                    </tr>
                                </tbody>
                            </table>
                            <%--end personal data--%>
                            <div class="border border-dark text-center mx-auto mt-5">
                                <h6 class="mt-2 text-lg-start mx-2">ये ओपीडी कार्ड कॉलेज की संपत्ति है। कृपा इस कार्ड को पंजीकरण काउंटर पर अनिवार्य जमा कराएं। इस कार्ड का नवीनीकरण प्रत्येक 30 दिन में कराएँ।</h6>
                            </div>
                            <%--start referral sequence--%>
                            <div class="table-responsive">
                                <table class="table2 table-bordered border-dark mt-5">
                                    <thead>
                                        <tr>
                                            <th class="fw-bold">Oral Medicine</th>
                                            <th class="fw-bold">Periodontics</th>
                                            <th class="fw-bold">Paedodontics</th>
                                            <th class="fw-bold">Public Health Dentistry</th>
                                            <th class="fw-bold">Oral Surgery</th>
                                            <th class="fw-bold">Prosthodontics</th>
                                            <th class="fw-bold">Orthodontics</th>
                                            <th class="fw-bold">Oral Pathology</th>
                                            <th class="fw-bold">Conservative Dentistry</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>01</td>
                                            <td>02</td>
                                            <td>03</td>
                                            <td>04</td>
                                            <td>05</td>
                                            <td>06</td>
                                            <td>07</td>
                                            <td>08</td>
                                            <td>09</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <%--end referral sequence--%>
                            <%--start complaint data--%>
                            <table class="table mt-5 ">
                                <tbody>
                                    <tr>
                                        <td><strong>Chief Complaint & History of Present illness:</strong></td>
                                        <td>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.</td>

                                    </tr>
                                    <tr>
                                        <td><strong>Examination of the area of chief complaint:</strong></td>
                                        <td>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.</td>

                                    </tr>
                                    <tr>
                                        <td><strong>Other Findings:</strong></td>
                                        <td>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.</td>

                                    </tr>
                                    <tr>
                                        <td><strong>Medical History:</strong></td>
                                        <td>Lorem Ipsum</td>

                                    </tr>
                                    <tr>
                                        <td><strong>Provisional Diagnosis:</strong></td>
                                        <td>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.</td>

                                    </tr>
                                </tbody>
                            </table>
                            <%--end complaint data--%>
                            <div class="border border-dark text-center mx-auto mt-5">
                                <p class="text-center mx-2">सहमति-पत्र</p>
                                <p class="mt-2 text-lg-start mx-2">मैंने अपने रोग और उसके इलाज के भुगतान और उसके उपचार की सफलता/असफलता के संबंध में पूर्ण रूप से जानकरी प्राप्त कर ली है तथा उपचार के दौरन सुन्न करने की प्रक्रिया और उसे होने वाली दुष्प्रभाव को भी समझ लिया है तथा मैं उपचार के लिए सहमत हूं</p>
                                <p class="text-lg-start mx-2">I have been explained in the above language I understand</p>
                            </div>
                            <%--start treatment--%>
                            <div class="table-responsive">
                                <table class="table2 table-bordered border-dark mt-5 w-100">
                                    <thead>
                                        <tr>
                                            <th class="text-center"><strong>Department & Date</strong></th>
                                            <th class="text-center"><strong>Treatment Notes</strong></th>
                                            <th class="text-center"><strong>Signature</strong></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="text-center">Oral Medicine</td>
                                            <td class="text-center">Tooth extraction</td>
                                            <td class="text-center">Doctor</td>
                                        </tr>
                                        <tr>
                                            <td class="text-center">Oral Medicine</td>
                                            <td class="text-center">Tooth extraction</td>
                                            <td class="text-center">Doctor</td>
                                        </tr>
                                        <tr>
                                            <td class="text-center">Oral Medicine</td>
                                            <td class="text-center">Tooth extraction</td>
                                            <td class="text-center">Doctor</td>
                                        </tr>
                                        <tr>
                                            <td class="text-center">Oral Medicine</td>
                                            <td class="text-center">Tooth extraction</td>
                                            <td class="text-center">Doctor</td>
                                        </tr>
                                        <tr>
                                            <td class="text-center">Oral Medicine</td>
                                            <td class="text-center">Tooth extraction</td>
                                            <td class="text-center">Doctor</td>
                                        </tr>
                                        <tr>
                                            <td class="text-center">Oral Medicine</td>
                                            <td class="text-center">Tooth extraction</td>
                                            <td class="text-center">Doctor</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <%--end treatment--%>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MainContentFooter" runat="server">
</asp:Content>
