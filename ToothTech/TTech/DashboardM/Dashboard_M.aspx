<%@ Page Title="" Language="C#" MasterPageFile="~/TTech/TTech.Master" AutoEventWireup="true" CodeBehind="Dashboard_M.aspx.cs" Inherits="ToothTech.TTech.Dashboard.Dashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentHeader" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <!--begin::Post-->
						<div class="post d-flex flex-column-fluid" id="kt_post">
							<!--begin::Container-->
							<div id="kt_content_container" class="container-xxl">
								<!--begin::Row-->
								<div class="row g-5 g-xl-8">
									<div class="col-xl-4">
										<!--begin::Statistics Widget 5-->
										<a href="#" class="card bg-body-white hoverable card-xl-stretch mb-xl-8">
											<!--begin::Body-->
											<div class="card-body">
												<!--begin::Svg Icon | path: icons/duotune/ecommerce/ecm002.svg-->
												<span class="svg-icon svg-icon-primary svg-icon-3x ms-n1">
													<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="currentColor"><path d="M6 4V8H18V4H20.0066C20.5552 4 21 4.44495 21 4.9934V21.0066C21 21.5552 20.5551 22 20.0066 22H3.9934C3.44476 22 3 21.5551 3 21.0066V4.9934C3 4.44476 3.44495 4 3.9934 4H6ZM9 17H7V19H9V17ZM9 14H7V16H9V14ZM9 11H7V13H9V11ZM16 2V6H8V2H16Z"></path></svg>
												</span>
												<!--end::Svg Icon-->
												<div class="text-gray-900 fw-bolder fs-2 mb-2 mt-5">Patient Registration</div>
												<div class="fw-bold text-gray-400">Register A New Patient</div>
											</div>
											<!--end::Body-->
										</a>
										<!--end::Statistics Widget 5-->
									</div>
									<div class="col-xl-4">
										<!--begin::Statistics Widget 5-->
										<a href="#" class="card bg-primary hoverable card-xl-stretch mb-xl-8">
											<!--begin::Body-->
											<div class="card-body">
												<!--begin::Svg Icon | path: icons/duotune/general/gen008.svg-->
												<span class="svg-icon svg-icon-white svg-icon-3x ms-n1">
													<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="rgba(255,255,255,1)"><path d="M12.0002 3.23235C13.5819 4.0567 14.7825 5.51252 15.2664 7.26605C15.4134 7.79843 15.9641 8.1109 16.4964 7.96396C17.0288 7.81702 17.3413 7.26633 17.1943 6.73395C16.7346 5.06811 15.7806 3.60711 14.4998 2.519C14.665 2.50641 14.8318 2.5 15 2.5C17.0071 2.5 18.6792 3.228 19.8307 4.60982C20.962 5.96738 21.5 7.84558 21.5 10C21.5 13.0971 20.9858 15.8652 20.1051 17.8976C19.265 19.8362 17.8974 21.5 16 21.5C14.8997 21.5 14.2129 20.8477 13.8053 20.1396C13.4431 19.5106 13.2269 18.7169 13.0529 18.0779C12.8459 17.3179 12.6873 16.7504 12.4615 16.3583C12.2754 16.0352 12.1497 16 12 16C11.8503 16 11.7246 16.0352 11.5385 16.3583C11.3127 16.7504 11.1541 17.3179 10.9471 18.0779L10.9471 18.0779C10.7731 18.7169 10.5569 19.5106 10.1947 20.1396C9.78706 20.8477 9.10027 21.5 8 21.5C6.1026 21.5 4.73499 19.8362 3.89494 17.8976C3.01425 15.8652 2.5 13.0971 2.5 10C2.5 7.84558 3.03797 5.96738 4.16928 4.60982C5.32079 3.228 6.9929 2.5 9 2.5C9.00948 2.5 9.01896 2.50002 9.02843 2.50006C10.0987 2.50466 11.1098 2.7686 12 3.23245C12.0001 3.23242 12.0001 3.23238 12.0002 3.23235Z"></path></svg>
												</span>
												<!--end::Svg Icon-->
												<div class="text-white fw-bolder fs-2 mb-2 mt-5">Patient Assessment</div>
												<div class="fw-bold text-white">Assess and Diagnose Patient</div>
											</div>
											<!--end::Body-->
										</a>
										<!--end::Statistics Widget 5-->
									</div>
									<div class="col-xl-4">
										<!--begin::Statistics Widget 5-->
										<a href="#" class="card bg-dark hoverable card-xl-stretch mb-5 mb-xl-8">
											<!--begin::Body-->
											<div class="card-body">
												<!--begin::Svg Icon | path: icons/duotune/arrows/arr070.svg-->
												<span class="svg-icon svg-icon-gray-100 svg-icon-3x ms-n1">
													<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="rgba(255,255,255,1)"><path d="M21 20H23V22H1V20H3V3C3 2.44772 3.44772 2 4 2H20C20.5523 2 21 2.44772 21 3V20ZM11 8H9V10H11V12H13V10H15V8H13V6H11V8ZM14 20H16V14H8V20H10V16H14V20Z"></path></svg>
												</span>
												<!--end::Svg Icon-->
												<div class="text-gray-100 fw-bolder fs-2 mb-2 mt-5">Refer To Department</div>
												<div class="fw-bold text-gray-100">Refer The Patient To Relevent Department </div>
											</div>
											<!--end::Body-->
										</a>
										<!--end::Statistics Widget 5-->
									</div>
								</div>
								<div class="row g-5 g-xl-8">
									<div class="col-xl-4">
										<!--begin::Statistics Widget 5-->
										<a href="#" class="card bg-body-white hoverable card-xl-stretch mb-xl-8">
											<!--begin::Body-->
											<div class="card-body">
												<!--begin::Svg Icon | path: icons/duotune/ecommerce/ecm002.svg-->
												<span class="svg-icon svg-icon-primary svg-icon-3x ms-n1">
													<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="currentColor"><path d="M8 3V5H6V9C6 11.2091 7.79086 13 10 13C12.2091 13 14 11.2091 14 9V5H12V3H15C15.5523 3 16 3.44772 16 4V9C16 11.9727 13.8381 14.4405 11.0008 14.9169L11 16.5C11 18.433 12.567 20 14.5 20C15.9973 20 17.275 19.0598 17.7749 17.7375C16.7283 17.27 16 16.2201 16 15C16 13.3431 17.3431 12 19 12C20.6569 12 22 13.3431 22 15C22 16.3711 21.0802 17.5274 19.824 17.8854C19.2102 20.252 17.0592 22 14.5 22C11.4624 22 9 19.5376 9 16.5L9.00019 14.9171C6.16238 14.4411 4 11.9731 4 9V4C4 3.44772 4.44772 3 5 3H8Z"></path></svg>
												</span>
												<!--end::Svg Icon-->
												<div class="text-gray-900 fw-bolder fs-2 mb-2 mt-5">Treatment</div>
												<div class="fw-bold text-gray-400">Information Regarding Treatment</div>
											</div>
											<!--end::Body-->
										</a>
										<!--end::Statistics Widget 5-->
									</div>
									<div class="col-xl-4">
										<!--begin::Statistics Widget 5-->
										<a href="#" class="card bg-primary hoverable card-xl-stretch mb-xl-8">
											<!--begin::Body-->
											<div class="card-body">
												<!--begin::Svg Icon | path: icons/duotune/general/gen008.svg-->
												<span class="svg-icon svg-icon-white svg-icon-3x ms-n1">
													<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="rgba(255,255,255,1)"><path d="M1 5C1 4.44772 1.44772 4 2 4H22C22.5523 4 23 4.44772 23 5V19C23 19.5523 22.5523 20 22 20H2C1.44772 20 1 19.5523 1 19V5ZM13 8V10H19V8H13ZM18 12H13V14H18V12ZM10.5 10C10.5 8.61929 9.38071 7.5 8 7.5C6.61929 7.5 5.5 8.61929 5.5 10C5.5 11.3807 6.61929 12.5 8 12.5C9.38071 12.5 10.5 11.3807 10.5 10ZM8 13.5C6.067 13.5 4.5 15.067 4.5 17H11.5C11.5 15.067 9.933 13.5 8 13.5Z"></path></svg>
												</span>
												<!--end::Svg Icon-->
												<div class="text-white fw-bolder fs-2 mb-2 mt-5">Next Visit/Finalize</div>
												<div class="fw-bold text-white">Schedule A Next Visit Or Finalise Patient</div>
											</div>
											<!--end::Body-->
										</a>
										<!--end::Statistics Widget 5-->
									</div>
								
								</div>
								<!--end::Row-->
								<!--begin::Row-->
								<div class="row g-5 g-xl-8">
									<!--begin::Col-->
									<div class="col-xl-4">
										<!--begin::List Widget 1-->
										
										<!--end::List Widget 1-->
									</div>
									<!--end::Col-->
									<!--begin::Col-->
		
									<!--end::Col-->
								</div>
								<!--end::Row-->
								<!--begin::Row-->
								<div class="row g-5 g-xl-8">
									<div class="col-xl-4">
										<!--begin::List Widget 3-->
										
										<!--end:List Widget 3-->
									</div>
									
								</div>
								<!--end::Row-->
								<!--begin::Row-->
								<div class="row g-5 g-xl-8">
									<div class="col-xl-6">
										<!--begin::List Widget 7-->
										
										<!--end::List Widget 7-->
									</div>
									<div class="col-xl-6">
										<!--begin::List Widget 6-->
										
										<!--end::List Widget 6-->
									</div>
								</div>
								<!--end::Row-->
							</div>
							<!--end::Container-->
						</div>
						<!--end::Post-->
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MainContentFooter" runat="server">
</asp:Content>
