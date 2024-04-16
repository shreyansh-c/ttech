<%@ Page Title="" Language="C#" MasterPageFile="~/TTech/TTech.Master" AutoEventWireup="true" CodeBehind="Patient_registration.aspx.cs" Inherits="ToothTech.TTech.Patient_reg.Patient_registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentHeader" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <!--begin::Main wrapper-->
        <div id="kt_docs_search_handler_responsive" class="d-flex flex-column flex-lg-row align-items-center" data-kt-search-keypress="true" data-kt-search-min-length="2" data-kt-search-enter="enter" data-kt-search-layout="menu" data-kt-search-responsive="lg" data-kt-menu-trigger="auto" data-kt-menu-permanent="true" data-kt-menu-placement="bottom-start">

            <!--begin::Form-->
            <form data-kt-search-element="form" class="d-flex align-items-center w-50 position-relative mb-3 mb-lg-0 me-lg-3 ms-lg-3" autocomplete="off">
                <!--begin::Hidden input(Added to disable form autocomplete)-->
                <input type="hidden" />
                <!--end::Hidden input-->

                <!--begin::Input-->
                <input type="text" class="form-control form-control-solid ps-14 flex-grow-1" name="search" value="" placeholder="Enter Patient ID" data-kt-search-element="input" />
                <!--end::Input-->

                <!--begin::Icon-->

                <!--end::Icon-->
            </form>
            <!--end::Form-->

            <!--begin::Button Container-->
            <div class="d-flex flex-row flex-lg-row ">
                <!--begin::Button-->
                <button type="button" class="btn btn-success mb-3 mb-lg-0 me-lg-3" id="searchButton">Search</button>
                <!--end::Button-->

                <!--begin::Button-->
                <button type="button" class="btn btn-warning mb-3 mb-lg-0 me-lg-3">Clear</button>
                <!--end::Button-->

                <!--begin::Button-->
                <button type="button" class="btn btn-info mb-3 mb-lg-0 me-lg-3" id="advanceSearchButton">Advance Search</button>
                <!--end::Button-->
                <!--begin::Button-->
                <button type="button" class="btn btn-danger mb-3 mb-lg-0" id="newRegButton">New Registration</button>
                <!--end::Button-->
            </div>
            <!--end::Button Container-->
        </div>
        <!--end::Main wrapper-->
        <!--begin::Advanced Search Fields-->
        <div class="card mx-5 mt-10 mb-10 bg-gray-300 rounded">
            <div class="d-flex justify-content-center">

                <div class=" mt-10 mx-5" id="advancedSearchFields" style="display: none;">
                    <label class="mb-10 fw-bold fs-4">Enter Details To Advance Search</label>
                    <!--begin::Input group-->
                    <div class="row mb-10">
                        <div class="col-md-6 mb-4">
                            <!--begin::Label-->
                            <label class="required fs-5 fw-bold mb-2">Patient Name</label>
                            <!--end::Label-->
                            <!--begin::Input-->
                            <input type="text" class="form-control form-control-solid" placeholder="Enter patient name" name="Patient_Name" id="txtpatientname" />
                            <!--end::Input-->
                        </div>

                        <div class="col-md-6 mb-4">
                            <!--begin::Label-->
                            <label class="required fs-5 fw-bold mb-2">Father Name</label>
                            <!--end::Label-->
                            <!--begin::Input-->
                            <input type="text" class="form-control form-control-solid" placeholder="Enter father name" name="father_Name" id="txt_FatherName" />
                            <!--end::Input-->
                        </div>

                        <div class="col-md-6 mb-4">
                            <!--begin::Label-->
                            <label class="required fs-5 fw-bold mb-2">Address</label>
                            <!--end::Label-->
                            <!--begin::Input-->
                            <input type="text" class="form-control form-control-solid" placeholder="Enter address" name="Address" id="txt_Address" />
                            <!--end::Input-->
                        </div>

                        <div class="col-md-6 mb-4">
                            <!--begin::Label-->
                            <label class="required fs-5 fw-bold mb-2">Mobile Number</label>
                            <!--end::Label-->
                            <!--begin::Input-->
                            <input type="text" class="form-control form-control-solid" placeholder="Enter mobile number" name="Mobile_Number" id="txt_MobileNumber" />
                            <!--end::Input-->
                        </div>

                        <div class="col-md-6 mb-4">
                            <label class="required fs-5 fw-bold mb-2" id="dd_Gender">Gender</label>

                            <div class="nav-group nav-group-fluid">

                                <!--begin::Option-->
                                <label>
                                    <input type="radio" class="btn-check" name="gender" value="M">
                                    <span class="btn btn-sm btn-color-muted btn-active btn-active-primary fw-bolder px-4">M</span>
                                </label>
                                <!--end::Option-->
                                <!--begin::Option-->
                                <label>
                                    <input type="radio" class="btn-check" name="gender" value="F">
                                    <span class="btn btn-sm btn-color-muted btn-active btn-active-primary fw-bolder px-4">F</span>
                                </label>
                                <!--end::Option-->
                                <!--begin::Option-->
                                <label>
                                    <input type="radio" class="btn-check" name="gender" value="O">
                                    <span class="btn btn-sm btn-color-muted btn-active btn-active-primary fw-bolder px-4">O</span>
                                </label>
                                <!--end::Option-->
                            </div>
                        </div>

                        <div class="col-md-6">
                            <label class="required fs-5 fw-bold mb-2" id="ddl_MartialStatus">Marital Status</label>

                            <div class="nav-group nav-group-fluid">
                                <label>
                                    <input type="radio" class="btn-check" name="mststus" value="M">
                                    <span class="btn btn-sm btn-color-muted btn-active btn-active-primary fw-bolder px-4">Married</span>
                                </label>
                                <!--end::Option-->
                                <label>
                                    <input type="radio" class="btn-check" name="mststus" value="F">
                                    <span class="btn btn-sm btn-color-muted btn-active btn-active-primary fw-bolder px-4">Unmarried</span>
                                </label>
                                <!--end::Option-->
                            </div>
                        </div>
                    </div>
                    <!--end::Input group-->
                </div>
            </div>
        </div>
        <!--end::Advanced Search Fields-->
    </div>
    <%--new registration--%>
    <div class="modal bg-white fade" tabindex="-1" id="kt_modal_2">
        <div class="modal-dialog modal-fullscreen">
            <div class="modal-content shadow-none">
                <div class="modal-header">
                    <h5 class="modal-title">Patient Registration</h5>
                    <div class="btn btn-icon btn-sm btn-active-light-primary ms-2" data-bs-dismiss="modal" aria-label="Close">
                        <span class="svg-icon svg-icon-2x"></span>
                    </div>
                </div>

                <!-- Stepper -->
                <div class="stepper stepper-pills" id="patient_registration_stepper">
                    <!-- Nav -->
                    <div class="stepper-nav flex-center flex-wrap mb-10">
                        <!-- Step 1 -->
                        <div class="stepper-item mx-2 my-4 current" data-kt-stepper-element="nav" data-kt-stepper-action="step">
                            <div class="stepper-line w-40px"></div>
                            <div class="stepper-icon w-40px h-40px">
                                <i class="stepper-check fas fa-check"></i>
                                <span class="stepper-number">1</span>
                            </div>
                            <div class="stepper-label">
                                <h3 class="stepper-title">Step 1
                                </h3>
                                <div class="stepper-desc">
                                    Patient Registration
                                </div>
                            </div>
                        </div>
                        <!-- End Step 1 -->

                        <!-- Steps 2, 3, and 4 -->
                        <!-- Empty placeholders -->
                        <div class="stepper-item mx-2 my-4" data-kt-stepper-element="nav" data-kt-stepper-action="step">
                            <div class="stepper-line w-40px"></div>
                            <div class="stepper-icon w-40px h-40px">
                                <i class="stepper-check fas fa-check"></i>
                                <span class="stepper-number">2</span>
                            </div>
                            <div class="stepper-label">
                                <h3 class="stepper-title">Step 2
                                </h3>
                                <div class="stepper-desc">
                                    Payment
                                </div>
                            </div>
                        </div>

                        <div class="stepper-item mx-2 my-4" data-kt-stepper-element="nav" data-kt-stepper-action="step">
                            <div class="stepper-line w-40px"></div>
                            <div class="stepper-icon w-40px h-40px">
                                <i class="stepper-check fas fa-check"></i>
                                <span class="stepper-number">3</span>
                            </div>
                            <div class="stepper-label">
                                <h3 class="stepper-title">Step 3
                                </h3>
                                <div class="stepper-desc">
                                    OPD Number
                                </div>
                            </div>
                        </div>

                        <div class="stepper-item mx-2 my-4" data-kt-stepper-element="nav" data-kt-stepper-action="step">
                            <div class="stepper-line w-40px"></div>
                            <div class="stepper-icon w-40px h-40px">
                                <i class="stepper-check fas fa-check"></i>
                                <span class="stepper-number">4</span>
                            </div>
                            <div class="stepper-label">
                                <h3 class="stepper-title">Step 4
                                </h3>
                                <div class="stepper-desc">
                                    Finalise
                                </div>
                            </div>
                        </div>
                        <!-- End Steps 2, 3, and 4 -->
                    </div>
                    <!-- End Nav -->

                    <!-- Form -->
                    <div class="form mx-lg-10" id="patient_registration_form">
                        <!-- Step 1 Content -->
                        <div class="flex-column current" data-kt-stepper-element="content">
                            <!-- Registration Form Fields -->
                            <div id="PatientRegistrationFields">
                                <!-- Begin Input group -->
                                <div class="row mb-4">
                                    <!-- Patient Name -->
                                    <div class="col-md-6 mb-4">
                                        <label class="required fs-5 fw-bold mb-2">Patient Name</label>
                                        <input type="text" class="form-control form-control-solid" placeholder="Enter Patient's Name" name="Patient_Name" id="reg_Patientname" />
                                    </div>
                                    <!-- End Patient Name -->

                                    <!-- Age -->
                                    <div class="col-md-6 mb-4">
                                        <label class="fs-5 fw-bold mb-2">Age</label>
                                        <input type="text" class="form-control form-control-solid" placeholder="Enter Patient's Age" name="Patient_Age" id="reg_Patientage" />
                                    </div>
                                    <!-- End Age -->

                                    <!-- Father's Name -->
                                    <div class="col-md-6 mb-4">
                                        <label class="required fs-5 fw-bold mb-2">Father's Name</label>
                                        <input type="text" class="form-control form-control-solid" placeholder="Enter Father's Name" name="father_Name" id="reg_FatherName" />
                                    </div>
                                    <!-- End Father's Name -->

                                    <!-- Address -->
                                    <div class="col-md-6 mb-4">
                                        <label class="required fs-5 fw-bold mb-2">Address</label>
                                        <input type="text" class="form-control form-control-solid" placeholder="Enter Address" name="Address" id="reg_Address" />
                                    </div>
                                    <!-- End Address -->

                                    <!-- Date of Birth -->
                                    <div class="col-md-6 mb-4">
                                        <label class="required fs-5 fw-bold mb-2">Date of Birth</label>
                                        <input type="date" class="form-control form-control-solid" name="DateOfBirth" id="reg_DateOfBirth" />
                                    </div>
                                    <!-- End Date of Birth -->

                                    <!-- Mobile Number -->
                                    <div class="col-md-6 mb-4">
                                        <label class="required fs-5 fw-bold mb-2">Mobile Number</label>
                                        <input type="text" class="form-control form-control-solid" placeholder="Enter Mobile Number" name="Mobile_Number" id="reg_MobileNumber" />
                                    </div>
                                    <!-- End Mobile Number -->

                                    <!-- Gender -->
                                    <div class="col-md-6 mb-4">
                                        <label class="required fs-5 fw-bold mb-2" id="reg_Gender">Gender</label>
                                        <div class="nav-group nav-group-fluid">
                                            <label>
                                                <input type="radio" class="btn-check" name="gender" value="M">
                                                <span class="btn btn-sm btn-color-muted btn-active btn-active-primary fw-bolder px-4">M</span>
                                            </label>
                                            <!-- End Option -->
                                            <label>
                                                <input type="radio" class="btn-check" name="gender" value="F">
                                                <span class="btn btn-sm btn-color-muted btn-active btn-active-primary fw-bolder px-4">F</span>
                                            </label>
                                            <!-- End Option -->
                                            <label>
                                                <input type="radio" class="btn-check" name="gender" value="O">
                                                <span class="btn btn-sm btn-color-muted btn-active btn-active-primary fw-bolder px-4">O</span>
                                            </label>
                                            <!-- End Option -->
                                        </div>
                                    </div>
                                    <!-- End Gender -->

                                    <!-- Marital Status -->
                                    <div class="col-md-6">
                                        <label class="required fs-5 fw-bold mb-2" id="reg_MartialStatus">Marital Status</label>
                                        <div class="nav-group nav-group-fluid">
                                            <label>
                                                <input type="radio" class="btn-check" name="mststus" value="Married">
                                                <span class="btn btn-sm btn-color-muted btn-active btn-active-primary fw-bolder px-4">Married</span>
                                            </label>
                                            <!-- End Option -->
                                            <label>
                                                <input type="radio" class="btn-check" name="mststus" value="Unmarried">
                                                <span class="btn btn-sm btn-color-muted btn-active btn-active-primary fw-bolder px-4">Unmarried</span>
                                            </label>
                                            <label>
                                                <input type="radio" class="btn-check" name="mststus" value="Divorced">
                                                <span class="btn btn-sm btn-color-muted btn-active btn-active-primary fw-bolder px-4">Divorced</span>
                                            </label>
                                            <label>
                                                <input type="radio" class="btn-check" name="mststus" value="Widowed">
                                                <span class="btn btn-sm btn-color-muted btn-active btn-active-primary fw-bolder px-4">Widowed</span>
                                            </label>
                                            <!-- End Option -->
                                        </div>
                                    </div>
                                    <!-- End Marital Status -->

                                    <div class="col-md-6 mb-4">
                                        <label class="required fs-5 fw-bold mb-2" id="reg_country">Country</label>
                                        <select class="form-select form-select-solid col-md-6" data-control="select2" data-placeholder="India">
                                            <option value="India">India</option>
                                            <option value="Afghanistan">Afghanistan</option>
                                            <option value="Albania">Albania</option>
                                            <option value="Algeria">Algeria</option>
                                            <option value="Andorra">Andorra</option>
                                            <option value="Angola">Angola</option>
                                            <option value="Antigua and Barbuda">Antigua and Barbuda</option>
                                            <option value="Argentina">Argentina</option>
                                            <option value="Armenia">Armenia</option>
                                            <option value="Australia">Australia</option>
                                            <option value="Austria">Austria</option>
                                            <option value="Azerbaijan">Azerbaijan</option>
                                            <option value="Bahamas">Bahamas</option>
                                            <option value="Bahrain">Bahrain</option>
                                            <option value="Bangladesh">Bangladesh</option>
                                            <option value="Barbados">Barbados</option>
                                            <option value="Belarus">Belarus</option>
                                            <option value="Belgium">Belgium</option>
                                            <option value="Belize">Belize</option>
                                            <option value="Benin">Benin</option>
                                            <option value="Bhutan">Bhutan</option>
                                            <option value="Bolivia">Bolivia</option>
                                            <option value="Bosnia and Herzegovina">Bosnia and Herzegovina</option>
                                            <option value="Botswana">Botswana</option>
                                            <option value="Brazil">Brazil</option>
                                            <option value="Brunei">Brunei</option>
                                            <option value="Bulgaria">Bulgaria</option>
                                            <option value="Burkina Faso">Burkina Faso</option>
                                            <option value="Burundi">Burundi</option>
                                            <option value="Cabo Verde">Cabo Verde</option>
                                            <option value="Cambodia">Cambodia</option>
                                            <option value="Cameroon">Cameroon</option>
                                            <option value="Canada">Canada</option>
                                            <option value="Central African Republic">Central African Republic</option>
                                            <option value="Chad">Chad</option>
                                            <option value="Chile">Chile</option>
                                            <option value="China">China</option>
                                            <option value="Colombia">Colombia</option>
                                            <option value="Comoros">Comoros</option>
                                            <option value="Congo">Congo</option>
                                            <option value="Costa Rica">Costa Rica</option>
                                            <option value="Croatia">Croatia</option>
                                            <option value="Cuba">Cuba</option>
                                            <option value="Cyprus">Cyprus</option>
                                            <option value="Czech Republic">Czech Republic</option>
                                            <option value="Democratic Republic of the Congo">Democratic Republic of the Congo</option>
                                            <option value="Denmark">Denmark</option>
                                            <option value="Djibouti">Djibouti</option>
                                            <option value="Dominica">Dominica</option>
                                            <option value="Dominican Republic">Dominican Republic</option>
                                            <option value="East Timor">East Timor</option>
                                            <option value="Ecuador">Ecuador</option>
                                            <option value="Egypt">Egypt</option>
                                            <option value="El Salvador">El Salvador</option>
                                            <option value="Equatorial Guinea">Equatorial Guinea</option>
                                            <option value="Eritrea">Eritrea</option>
                                            <option value="Estonia">Estonia</option>
                                            <option value="Eswatini">Eswatini</option>
                                            <option value="Ethiopia">Ethiopia</option>
                                            <option value="Fiji">Fiji</option>
                                            <option value="Finland">Finland</option>
                                            <option value="France">France</option>
                                            <option value="Gabon">Gabon</option>
                                            <option value="Gambia">Gambia</option>
                                            <option value="Georgia">Georgia</option>
                                            <option value="Germany">Germany</option>
                                            <option value="Ghana">Ghana</option>
                                            <option value="Greece">Greece</option>
                                            <option value="Grenada">Grenada</option>
                                            <option value="Guatemala">Guatemala</option>
                                            <option value="Guinea">Guinea</option>
                                            <option value="Guinea-Bissau">Guinea-Bissau</option>
                                            <option value="Guyana">Guyana</option>
                                            <option value="Haiti">Haiti</option>
                                            <option value="Honduras">Honduras</option>
                                            <option value="Hungary">Hungary</option>
                                            <option value="Iceland">Iceland</option>
                                            <option value="India">India</option>
                                            <option value="Indonesia">Indonesia</option>
                                            <option value="Iran">Iran</option>
                                            <option value="Iraq">Iraq</option>
                                            <option value="Ireland">Ireland</option>
                                            <option value="Israel">Israel</option>
                                            <option value="Italy">Italy</option>
                                            <option value="Ivory Coast">Ivory Coast</option>
                                            <option value="Jamaica">Jamaica</option>
                                            <option value="Japan">Japan</option>
                                            <option value="Jordan">Jordan</option>
                                            <option value="Kazakhstan">Kazakhstan</option>
                                            <option value="Kenya">Kenya</option>
                                            <option value="Kiribati">Kiribati</option>
                                            <option value="Kosovo">Kosovo</option>
                                            <option value="Kuwait">Kuwait</option>
                                            <option value="Kyrgyzstan">Kyrgyzstan</option>
                                            <option value="Laos">Laos</option>
                                            <option value="Latvia">Latvia</option>
                                            <option value="Lebanon">Lebanon</option>
                                            <option value="Lesotho">Lesotho</option>
                                            <option value="Liberia">Liberia</option>
                                            <option value="Libya">Libya</option>
                                            <option value="Liechtenstein">Liechtenstein</option>
                                            <option value="Lithuania">Lithuania</option>
                                            <option value="Luxembourg">Luxembourg</option>
                                            <option value="Madagascar">Madagascar</option>
                                            <option value="Malawi">Malawi</option>
                                            <option value="Malaysia">Malaysia</option>
                                            <option value="Maldives">Maldives</option>
                                            <option value="Mali">Mali</option>
                                            <option value="Malta">Malta</option>
                                            <option value="Marshall Islands">Marshall Islands</option>
                                            <option value="Mauritania">Mauritania</option>
                                            <option value="Mauritius">Mauritius</option>
                                            <option value="Mexico">Mexico</option>
                                            <option value="Micronesia">Micronesia</option>
                                            <option value="Moldova">Moldova</option>
                                            <option value="Monaco">Monaco</option>
                                            <option value="Mongolia">Mongolia</option>
                                            <option value="Montenegro">Montenegro</option>
                                            <option value="Morocco">Morocco</option>
                                            <option value="Mozambique">Mozambique</option>
                                            <option value="Myanmar">Myanmar</option>
                                            <option value="Namibia">Namibia</option>
                                            <option value="Nauru">Nauru</option>
                                            <option value="Nepal">Nepal</option>
                                            <option value="Netherlands">Netherlands</option>
                                            <option value="New Zealand">New Zealand</option>
                                            <option value="Nicaragua">Nicaragua</option>
                                            <option value="Niger">Niger</option>
                                            <option value="Nigeria">Nigeria</option>
                                            <option value="North Korea">North Korea</option>
                                            <option value="North Macedonia">North Macedonia</option>
                                            <option value="Norway">Norway</option>
                                            <option value="Oman">Oman</option>
                                            <option value="Pakistan">Pakistan</option>
                                            <option value="Palau">Palau</option>
                                            <option value="Palestine">Palestine</option>
                                            <option value="Panama">Panama</option>
                                            <option value="Papua New Guinea">Papua New Guinea</option>
                                            <option value="Paraguay">Paraguay</option>
                                            <option value="Peru">Peru</option>
                                            <option value="Philippines">Philippines</option>
                                            <option value="Poland">Poland</option>
                                            <option value="Portugal">Portugal</option>
                                            <option value="Qatar">Qatar</option>
                                            <option value="Republic of the Congo">Republic of the Congo</option>
                                            <option value="Romania">Romania</option>
                                            <option value="Russia">Russia</option>
                                            <option value="Rwanda">Rwanda</option>
                                            <option value="Saint Kitts and Nevis">Saint Kitts and Nevis</option>
                                            <option value="Saint Lucia">Saint Lucia</option>
                                            <option value="Saint Vincent and the Grenadines">Saint Vincent and the Grenadines</option>
                                            <option value="Samoa">Samoa</option>
                                            <option value="San Marino">San Marino</option>
                                            <option value="Sao Tome and Principe">Sao Tome and Principe</option>
                                            <option value="Saudi Arabia">Saudi Arabia</option>
                                            <option value="Senegal">Senegal</option>
                                            <option value="Serbia">Serbia</option>
                                            <option value="Seychelles">Seychelles</option>
                                            <option value="Sierra Leone">Sierra Leone</option>
                                            <option value="Singapore">Singapore</option>
                                            <option value="Slovakia">Slovakia</option>
                                            <option value="Slovenia">Slovenia</option>
                                            <option value="Solomon Islands">Solomon Islands</option>
                                            <option value="Somalia">Somalia</option>
                                            <option value="South Africa">South Africa</option>
                                            <option value="South Korea">South Korea</option>
                                            <option value="South Sudan">South Sudan</option>
                                            <option value="Spain">Spain</option>
                                            <option value="Sri Lanka">Sri Lanka</option>
                                            <option value="Sudan">Sudan</option>
                                            <option value="Suriname">Suriname</option>
                                            <option value="Sweden">Sweden</option>
                                            <option value="Switzerland">Switzerland</option>
                                            <option value="Syria">Syria</option>
                                            <option value="Tajikistan">Tajikistan</option>
                                            <option value="Tanzania">Tanzania</option>
                                            <option value="Thailand">Thailand</option>
                                            <option value="Togo">Togo</option>
                                            <option value="Tonga">Tonga</option>
                                            <option value="Trinidad and Tobago">Trinidad and Tobago</option>
                                            <option value="Tunisia">Tunisia</option>
                                            <option value="Turkey">Turkey</option>
                                            <option value="Turkmenistan">Turkmenistan</option>
                                            <option value="Tuvalu">Tuvalu</option>
                                            <option value="Uganda">Uganda</option>
                                            <option value="Ukraine">Ukraine</option>
                                            <option value="United Arab Emirates">United Arab Emirates</option>
                                            <option value="United Kingdom">United Kingdom</option>
                                            <option value="United States">United States</option>
                                            <option value="Uruguay">Uruguay</option>
                                            <option value="Uzbekistan">Uzbekistan</option>
                                            <option value="Vanuatu">Vanuatu</option>
                                            <option value="Vatican City">Vatican City</option>
                                            <option value="Venezuela">Venezuela</option>
                                            <option value="Vietnam">Vietnam</option>
                                            <option value="Yemen">Yemen</option>
                                            <option value="Zambia">Zambia</option>
                                            <option value="Zimbabwe">Zimbabwe</option>
                                        </select>

                                    </div>



                                </div>
                                <!--end::Input group-->
                            </div>
                        </div>
                    </div>
                    <!-- End Input group -->
                    <%--Start Step 2 Content--%>
                    <div class="form mx-lg-10" id="payment_form">
                        <div class="flex-column " data-kt-stepper-element="content">
                            <!-- Registration Form Fields -->
                            <div id="PaymentFields">
                                <!-- Begin Input group -->
                                <div class="row mb-4">

                                    <div class="col-md-6 mb-4">
                                        <label class="required fs-5 fw-bold mb-2">Patient Type</label>
                                        <select id="pay_patienttype" class="form-select form-select-solid col-md-6" data-control="select2" data-placeholder="Select Patient Type">
                                            <option value="General">General</option>
                                            <option value="Staff">Staff</option>
                                            <option value="Student">Student</option>
                                            <option value="VIP">VIP</option>
                                            <option value="VVIP">VVIP</option>
                                        </select>
                                    </div>

                                    <!-- Start Reciept Number -->
                                    <div class="col-md-6 mb-4">
                                        <label class="required fs-5 fw-bold mb-2">Reciept Number</label>
                                        <input type="text" class="form-control form-control-solid" placeholder="Enter Reciept Number" name="Reciept_Number" id="pay_recnumber" />
                                    </div>
                                    <!-- End Reciept Number -->

                                    <div id="charge_display" class="mt-5 mb-5 fw-bold"></div>




                                </div>
                                <!--end::Input group-->
                            </div>
                        </div>
                    </div>
                    <%--End Step 2 Content--%>

                    <%--Start Step 3 Content--%>
                    <div class="form mx-lg-10" id="allotment_form">
                        <div class="flex-column " data-kt-stepper-element="content">
                            <!-- Registration Form Fields -->
                            <div id="AllotmentFields">
                                <!-- Begin Input group -->
                                <div class="row mb-4">



                                    <div id="opd_number" class="mt-5 mb-5 fw-bold"></div>
                                    <div id="uhid_number" class="mt-5 mb-5 fw-bold"></div>



                                </div>
                                <!--end::Input group-->
                            </div>
                        </div>
                    </div>
                    <%--End Step 3 Content--%>
                    <%--Start Step 4 Content--%>
                    <div class="form mx-lg-10" id="patientcard_form">
                        <div class="flex-column " data-kt-stepper-element="content">
                            <!-- Registration Form Fields -->
                            <div id="patientcard">
                                <!-- Begin Input group -->
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
                                <!--end::Input group-->
                            </div>
                        </div>
                    </div>
                    <%--End Step 4 Content--%>
                </div>
                <!-- End Registration Form Fields -->

            </div>
            <!-- End Step 1 Content -->






            <!-- End Form -->

            <!-- Stepper Footer -->

            <!-- End Stepper Footer -->
        </div>
        <!-- End Stepper -->
        <div class="modal-footer fixed-bottom">
            <div class="d-flex flex-stack">
                <div class="me-2">
                    <button type="button" class="btn btn-light btn-active-light-primary" data-kt-stepper-action="previous">Back</button>
                </div>
                <div>
                    <button type="button" class="btn btn-primary" data-kt-stepper-action="next">Continue</button>
                </div>
            </div>
        </div>
    </div>
    <%-- new registration end--%>


    <%--start already registered--%>
    <div class="card mx-10">
        <label class="mt-10 mb-10 fw-bold fs-4 px-10">Patient Details</label>
        <table class="table mx-10 mt-5 mb-10">
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
                <tr>
                    <td><strong>PID:</strong></td>
                    <td>ROH8364</td>
                    <td><strong>UHID:</strong></td>
                    <td>32983ROH1404</td>
                </tr>
            </tbody>
        </table>
        <div class="d-flex justify-content-center mb-5">
            <button type="button" class="btn btn-primary">Next</button>
        </div>
    </div>

    <%--end already registered--%>
    <script src="Patient_registration.js"></script>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MainContentFooter" runat="server">
</asp:Content>
