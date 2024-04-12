<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ToothTech.TTech.Login" %>

<!DOCTYPE html>

<html lang="en">
<!--begin::Head-->
<head>
    <base href="#">
    <title>Tooth-Tech</title>
    <meta charset="utf-8" />
    <link rel="canonical" href="https://preview.keenthemes.com/metronic8" />
    <link rel="shortcut icon" href="assets/media/logos/favicon.ico" />
    <!--begin::Fonts-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" />
    <!--end::Fonts-->
    <!--begin::Global Stylesheets Bundle(used by all pages)-->
    <link href="assets/plugins/global/plugins.bundle.css" rel="stylesheet" type="text/css" />
    <link href="assets/css/style.bundle.css" rel="stylesheet" type="text/css" />
    <!--end::Global Stylesheets Bundle-->
</head>
<!--end::Head-->
<!--begin::Body-->
<body id="kt_body" class="bg-body">
    <!--begin::Main-->
    <!--begin::Root-->
    <div class="d-flex flex-column flex-root">
        <!--begin::Authentication - Sign-in -->
        <div class="d-flex flex-column flex-lg-row flex-column-fluid">
            <!--begin::Aside-->
            <div class="d-flex flex-column flex-lg-row-auto w-xl-600px positon-xl-relative" style="background-color: #F2C98A">
                <!--begin::Wrapper-->
                <div class="d-flex flex-column position-xl-fixed top-0 bottom-0 w-xl-600px scroll-y">
                    <!--begin::Content-->
                    <div class="d-flex flex-row-fluid flex-column text-center p-10 pt-lg-20">
                        <!--begin::Logo-->
                        <a href="../../demo8/dist/index.html" class="py-9 mb-5">
                            <img alt="Logo" src="assets/media/logos/svsulogo.png" class="h-100px" />
                        </a>
                        <!--end::Logo-->
                        <!--begin::Title-->
                        <h1 class="fw-bolder fs-2qx pb-5 pb-md-10" style="color: #986923;">Welcome to Tooth Tech</h1>
                        <!--end::Title-->
                        <!--begin::Description-->
                        <p class="fw-bold fs-2" style="color: #986923;">
                            Guru Gobind Singh Subharti Dental College & Hospital 
						
                            <br />
                            Swami Vivekanand Subharti Hospital
                        </p>
                        <!--end::Description-->
                    </div>
                    <!--end::Content-->
                    <!--begin::Illustration-->
                    <div class="d-flex flex-row-auto bgi-no-repeat bgi-position-x-center bgi-size-contain bgi-position-y-bottom min-h-100px min-h-lg-350px" style="background-image: url(/TTech/assets/media/illustrations/sketchy-1/13.png)"></div>
                    <!--end::Illustration-->
                </div>
                <!--end::Wrapper-->
            </div>
            <!--end::Aside-->
            <!--begin::Body-->
            <div class="d-flex flex-column flex-lg-row-fluid py-10">
                <!--begin::Content-->
                <div class="d-flex flex-center flex-column flex-column-fluid">
                    <!--begin::Wrapper-->
                    <div class="w-lg-500px p-10 p-lg-15 mx-auto">
                        <form runat="server">
                            <!--begin::Form-->
                            <div class="form w-100" novalidate="novalidate" id="kt_sign_in_form" action="#">
                                <!--begin::Heading-->
                                <div class="text-center mb-10">
                                    <!--begin::Title-->
                                    <h1 class="text-dark mb-3">Sign In to Tooth-Tech.</h1>
                                    <!--end::Title-->
                                    <!--begin::Link-->
                                    <div class="text-gray-400 fw-bold fs-4">
                                        New Here?
								
                                    <a href="SignUp.aspx" class="link-primary fw-bolder">Create an Account</a>
                                    </div>
                                    <!--end::Link-->
                                </div>
                                <!--begin::Heading-->
                                <!--begin::Input group-->
                                <div class="fv-row mb-10">
                                    <!--begin::Label-->
                                    <label class="form-label fs-6 fw-bolder text-dark">Email</label>
                                    <!--end::Label-->
                                    <!--begin::Input-->
                                    <asp:TextBox ID="email" class="form-control form-control-lg form-control-solid" placeholder="Email" type="text" name="email" runat="server"></asp:TextBox>

                                    <!--end::Input-->
                                </div>
                                <!--end::Input group-->
                                <!--begin::Input group-->
                                <div class="fv-row mb-10">
                                    <!--begin::Wrapper-->
                                    <div class="d-flex flex-stack mb-2">
                                        <!--begin::Label-->
                                        <label class="form-label fw-bolder text-dark fs-6 mb-0">Password</label>
                                        <!--end::Label-->
                                        <!--begin::Link-->
                                        <a href="../../demo8/dist/authentication/layouts/aside/password-reset.html" class="link-primary fs-6 fw-bolder">Forgot Password ?</a>
                                        <!--end::Link-->
                                    </div>
                                    <!--end::Wrapper-->
                                    <!--begin::Input-->
                                    <asp:TextBox ID="password" class="form-control form-control-lg form-control-solid" placeholder="password" type="password" name="password" runat="server"></asp:TextBox>

                                    <!--end::Input-->
                                </div>
                                <!--end::Input group-->
                                <!--begin::Actions-->
                                <div class="text-center">
                                    <!--begin::Submit button-->
                                    <asp:Button ID="kt_login_signin_submit" class="btn btn-lg btn-primary w-100 mb-5" runat="server" Text="Continue" OnClick="kt_login_signin_submit_Click" />

                                    <!--end::Submit button-->
                                    <!--begin::Separator-->
                                    <div class="text-center text-muted text-uppercase fw-bolder mb-5">or</div>
                                    <!--end::Separator-->
                                    <!--begin::Google link-->
                                    <asp:LinkButton ID="gmaillogin" CssClass="btn btn-flex flex-center btn-light btn-lg w-100 mb-5" runat="server" OnClick="gmaillogin_Click">
                                        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="assets/media/svg/brand-logos/google-icon.svg" />Continue with Google</asp:LinkButton>

                                    <!--end::Google link-->

                                </div>
                                <!--end::Actions-->
                            </div>
                            <!--end::Form-->
                        </form>
                    </div>
                    <!--end::Wrapper-->
                </div>
                <!--end::Content-->
                <!--begin::Footer-->
                <div class="d-flex flex-center flex-wrap fs-6 p-5 pb-0">
                    <!--begin::Links-->
                    <div class="d-flex flex-center fw-bold fs-6">
                        <a href="#" class="text-muted text-hover-primary px-2" target="_blank">About</a>
                        <a href="#" class="text-muted text-hover-primary px-2" target="_blank">Support</a>
                        <a href="#" class="text-muted text-hover-primary px-2" target="_blank">Purchase</a>
                    </div>
                    <!--end::Links-->
                </div>
                <!--end::Footer-->
            </div>
            <!--end::Body-->
        </div>
        <!--end::Authentication - Sign-in-->
    </div>
    <!--end::Root-->
    <!--end::Main-->
    <!--begin::Javascript-->
    <script>var hostUrl = "assets/";</script>
    <!--begin::Global Javascript Bundle(used by all pages)-->
    <script src="/TTech/assets/plugins/global/plugins.bundle.js"></script>
    <script src="/TTech/assets/js/scripts.bundle.js"></script>
    <!--end::Global Javascript Bundle-->
    <!--begin::Page Custom Javascript(used by this page)-->
    <script src="/TTech/assets/js/custom/authentication/sign-in/general.js"></script>
    <!--end::Page Custom Javascript-->
    <!--end::Javascript-->
</body>
<!--end::Body-->
</html>
