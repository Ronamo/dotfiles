<%@ Page Title="Graphic Dimensions - Contact Us" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<meta name="description" content="Contact our Corporate personnel, our manufaturing facilities, or one of our Regional Sales Managers." />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<script language="javascript">
function setLoc(loc) {
	if (loc == "1") {
		$('#divCorp').show(600);
		$('#divGA').hide(600);
		$('#divKY').hide(600);
		$('#divNH').hide(600);
		$('#divSM').hide(600);
		$('#divNDL').hide(600);
	}
	else if (loc == "2") {
		$('#divCorp').hide(600);
		$('#divGA').show(600);
		$('#divKY').hide(600);
		$('#divNH').hide(600);
		$('#divSM').hide(600);
		$('#divNDL').hide(600);
	}
	else if (loc == "3") {
		$('#divCorp').hide(600);
		$('#divKY').show(600);
		$('#divGA').hide(600);
		$('#divNH').hide(600);
		$('#divSM').hide(600);
		$('#divNDL').hide(600);
	}
	else if (loc == "4") {
		$('#divCorp').hide(600);
		$('#divNH').show(600);
		$('#divKY').hide(600);
		$('#divGA').hide(600);
		$('#divSM').hide(600);
		$('#divNDL').hide(600);
	}
	else if (loc == "5") {
		$('#divCorp').hide(600);
		$('#divNH').hide(600);
		$('#divKY').hide(600);
		$('#divGA').hide(600);
		$('#divSM').show(600);
		$('#divNDL').hide(600);
	}
	else {
		$('#divCorp').hide(600);
		$('#divSM').hide(600);
		$('#divNH').hide(600);
		$('#divGA').hide(600);
		$('#divKY').hide(600);
		$('#divNDL').show(600);
	}
	return false;
}
</script>

<div style="text-align:left; font-family:Arial; font-size:12px; padding:10px 30px 10px 30px;">
	<%if(((string)Request.QueryString["id"]).Equals("1")){ %>
	<div id="divCorp" style="display:block;">
		<%} else { %>
		<div id="divCorp" style="display:none;">
			<%} %>
			<table style="width:100%;">
				<tr>
					<td>
						<div style="margin:0px 0px 20px 0px;">
							<span style="font-weight:bold; font-size:15px;">Corporate Location</span>
						</div>
					</td>
					<td style="text-align:right; vertical-align:top;">
						<a href="#" onfocus="blur();" onclick="javascript:setLoc(2); return false;" class="site-blue-link">Georgia</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="#" onfocus="blur();" onclick="javascript:setLoc(3); return false;" class="site-blue-link">Kentucky</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="#" OnFocus="blur();" onclick="javascript:setLoc(4); return false;" class="site-blue-link">New Hampshire</a><br /><a href="#" OnFocus="blur();" onclick="javascript:setLoc(6); return false;" class="site-blue-link">Label Division</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="#" OnFocus="blur();" onclick="javascript:setLoc(5); return false;" class="site-blue-link">Sales Managers</a>
					</td>
				</tr>

				<tr>
					<td style="width:50%; vertical-align:top;">
						<div style="margin:0px 0px 20px 0px;">
							<b>Street Address:</b>
							<br />
							Graphic Dimensions, Inc.
							<br />
							675 Hartman Road
							<br />
							Austell GA 30168
						</div>
						<div style="margin:0px 0px 20px 0px;">
							<b>Mailing Address:</b>
							<br />
							Graphic Dimensions, Inc.
							<br />
							PO Box 44467
							<br />
							Atlanta, GA 30336
						</div>
						<div style="margin:0px 0px 20px 0px; font-size:11px;">
							Phone: 678.945.5191
							<br />
							Toll Free: 800.699.2978
							<br />
							Fax: 678.945.5185
						</div>
					</td>
					<td width="50%">
						<div>
							<b>Email Addresses:</b>
							<br />
							<div style="padding:0px 0px 8px 0px;">
								President &amp; CEO:<br />
								Jay Scammell
								(<a href="mailto:jay.scammell@graphdim.com" class="site-blue-link">jay.scammell@graphdim.com</a>)
							</div>
							<div style="padding:0px 0px 8px 0px;">
								Vice President, Information Technology:<br />
								Andrew Alford
								(<a href="mailto:andrew.alford@graphdim.com" class="site-blue-link">andrew.alford@graphdim.com</a>)
							</div>
							<div style="padding:0px 0px 8px 0px;">
								Vice President, Sales &amp; Marketing:<br />
								Bill Reid
								(<a href="mailto:bill.reid@graphdim.com" class="site-blue-link">bill.reid@graphdim.com</a>)
							</div>
							<div style="padding:0px 0px 8px 0px;">
								<span style="font-weight:bold; font-size:11px;">Accounts Receivable:</span>
								<br />
								Credit Department
								(<a href="mailto:Credit@graphicdimensions.net" class="site-blue-link">Credit@graphicdimensions.net</a>)
							</div>
							<div style="padding:0px 0px 16px 0px;">
								<span style="font-weight:bold; font-size:11px;">Accounts Payable/Human Resources:</span>
								<br />
								Normie Scammell
								(<a href="mailto:normie.scammell@graphdim.com" class="site-blue-link">normie.scammell@graphdim.com</a>)
							</div>
						</div>
					</td>
				</tr>
			</table>
		</div>

		<%if(((string)Request.QueryString["id"]).Equals("2")){ %>
		<div id="divGA" style="display:block;">
			<%} else { %>
			<div id="divGA" style="display:none;">
				<%} %>
				<table style="width:100%;">
					<tr>
						<td>
							<div style="margin:0px 0px 20px 0px;">
								<span style="font-weight:bold; font-size:15px;">Georgia Location</span>
							</div>
						</td>
						<td style="text-align:right; vertical-align:top;">
							<a href="#" onfocus="blur();" onclick="javascript:setLoc(1); return false;" class="site-blue-link">Corporate</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="#" onfocus="blur();" onclick="javascript:setLoc(3); return false;" class="site-blue-link">Kentucky</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="#" OnFocus="blur();" onclick="javascript:setLoc(4); return false;" class="site-blue-link">New Hampshire</a><br /><a href="#" OnFocus="blur();" onclick="javascript:setLoc(6); return false;" class="site-blue-link">Label Division</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="#" OnFocus="blur();" onclick="javascript:setLoc(5); return false;" class="site-blue-link">Sales Managers</a>
						</td>
					</tr>

					<tr>
						<td style="width:50%; vertical-align:top;">
							<div style="margin:0px 0px 20px 0px;">
								<b>Street Address:</b>
								<br />
								Graphic Dimensions, Inc.
								<br />
								675 Hartman Road
								<br />
								Austell, GA 30168
							</div>
							<div style="margin:0px 0px 20px 0px;">
								<b>Mailing Address:</b>
								<br />
								Graphic Dimensions, Inc.
								<br />
								PO Box 44467
								<br />
								Atlanta, GA 30336
							</div>
							<div style="margin:0px 0px 20px 0px; font-size:11px;">
								Phone: 678.945.5191
								<br />
								Toll Free: 800.699.2978
								<br />
								Fax: 678.945.5185
							</div>
							<div style="margin:0px 0px 20px 0px;">
								<span style="font-weight:bold;">Quotes:</span> <a href="mailto:ga-quotes@graphdim.com" class="site-blue-link">ga-quotes@graphdim.com</a>
							</div>
						</td>
						<td width="50%">
							<div>
								<b>Email Addresses:</b>
								<br />
								<div style="padding:0px 0px 8px 0px;">
									General Manager:<br />
									Rodney Hall
									(<a href="mailto:rodney.hall@graphdim.com" class="site-blue-link">rodney.hall@graphdim.com</a>)
								</div>
								<div style="padding:0px 0px 8px 0px;">
									<span style="font-weight:bold; font-size:11px;">Customer Service Representatives:</span>
									<br />
									Niki Collier
									(<a href="mailto:niki.collier@graphdim.com" class="site-blue-link">niki.collier@graphdim.com</a>)
									<br />
									Donna Priest
									(<a href="mailto:donna.priest@graphdim.com" class="site-blue-link">donna.priest@graphdim.com</a>)
									<br />
									Rosa Sheffield
									(<a href="mailto:rosa.sheffield@graphdim.com" class="site-blue-link">rosa.sheffield@graphdim.com</a>)
									<br />
									Brittany Kirkland
									(<a href="mailto:brittany.kirkland@graphdim.com" class="site-blue-link">brittany.kirkland@graphdim.com</a>)
									<br />
									Cristy Harris
									(<a href="mailto:cristy.harris@graphdim.com" class="site-blue-link">cristy.harris@graphdim.com</a>)
									<br />
									Delana Smallwood
									(<a href="mailto:delana.smallwood@graphdim.com" class="site-blue-link">delana.smallwood@graphdim.com</a>)
								</div>
								<div style="padding:0px 0px 8px 0px;">
									<span style="font-weight:bold; font-size:11px;">Prepress</span> (artwork. etc.):
									<br />
									(<a href="mailto:prepress@graphicdimensions.net" class="site-blue-link">prepress@graphicdimensions.net</a>)
								</div>
							</div>
						</td>
					</tr>
				</table>
			</div>

			<%if(((string)Request.QueryString["id"]).Equals("3")){ %>
			<div id="divKY" style="display:block;">
				<%} else { %>
				<div id="divKY" style="display:none;">
					<%} %>
					<table style="width:100%;">
						<tr>
							<td>
								<div style="margin:0px 0px 20px 0px;">
									<span style="font-weight:bold; font-size:15px;">Kentucky Location</span>
								</div>
							</td>
							<td style="text-align:right; vertical-align:top;">
								<a href="#" onfocus="blur();" onclick="javascript:setLoc(1); return false;" class="site-blue-link">Corporate</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="#" OnFocus="blur();" onclick="javascript:setLoc(2); return false;" class="site-blue-link">Georgia</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="#" OnFocus="blur();" onclick="javascript:setLoc(4); return false;" class="site-blue-link">New Hampshire</a><br /><a href="#" OnFocus="blur();" onclick="javascript:setLoc(6); return false;" class="site-blue-link">Label Division</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="#" OnFocus="blur();" onclick="javascript:setLoc(5); return false;" class="site-blue-link">Sales Managers</a>
							</td>
						</tr>

						<tr>
							<td style="width:50%; vertical-align:top;">
								<div style="margin:0px 0px 20px 0px;">
									<b>Street Address:</b>
									<br />
									Graphic Dimensions, Inc.
									<br />
									800 Brighton St.
									<br />
									Newport, KY 41071
								</div>
								<div style="margin:0px 0px 20px 0px;">
									<b>Mailing Address:</b>
									<br />
									Graphic Dimensions, Inc.
									<br />
									PO Box 250
									<br />
									Newport, KY 41072
								</div>
								<div style="margin:0px 0px 20px 0px; font-size:11px;">
									Phone: 859.581.3989
									<br />
									Toll Free: 800.726.3676
									<br />
									Fax: 859.581.4090
								</div>
								<div style="margin:0px 0px 20px 0px;">
									<span style="font-weight:bold;">Quotes:</span> <a href="mailto:ky-quotes@graphdim.com" class="site-blue-link">ky-quotes@graphdim.com</a>
								</div>
							</td>
							<td width="50%">
								<div>
									<b>Email Addresses:</b>
									<br />
									<div style="padding:0px 0px 8px 0px;">
										General Manager:<br />
										Alan Thompson
										(<a href="mailto:alan.thompson@graphdim.com" class="site-blue-link">alan.thompson@graphdim.com</a>)
									</div>
									<div style="padding:0px 0px 8px 0px;">
										<span style="font-weight:bold; font-size:11px;">Customer Service Representatives:</span>
										<br />
										Tim Stamates
										(<a href="mailto:tim.stamates@graphdim.com" class="site-blue-link">tim.stamates@graphdim.com</a>)
										<br />
										John Sorrentino
										(<a href="mailto:john.sorrentino@graphdim.com" class="site-blue-link">john.sorrentino@graphdim.com</a>)
										<br />
										Sharon Groneck
										(<a href="mailto:sharon.groneck@graphdim.com" class="site-blue-link">sharon.groneck@graphdim.com</a>)
									</div>
									<div style="padding:0px 0px 8px 0px;">
										<span style="font-weight:bold; font-size:11px;">Prepress</span> (artwork. etc.):
										<br />
										(<a href="mailto:prepressky@graphicdimensions.net" class="site-blue-link">prepressky@graphicdimensions.net</a>)
									</div>
								</div>
							</td>
						</tr>
					</table>
				</div>

				<%if(((string)Request.QueryString["id"]).Equals("4")){ %>
				<div id="divNH" style="display:block;">
					<%} else { %>
					<div id="divNH" style="display:none;">
						<%} %>
						<table style="width:100%;">
							<tr>
								<td>
									<div style="margin:0px 0px 20px 0px;">
										<span style="font-weight:bold; font-size:15px;">New Hampshire Location</span>
									</div>
								</td>
								<td style="text-align:right; vertical-align:top;">
									<a href="#" onfocus="blur();" onclick="javascript:setLoc(1); return false;" class="site-blue-link">Corporate</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="#" OnFocus="blur();" onclick="javascript:setLoc(2); return false;" class="site-blue-link">Georgia</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="#" OnFocus="blur();" onclick="javascript:setLoc(3); return false;" class="site-blue-link">Kentucky</a><br /><a href="#" OnFocus="blur();" onclick="javascript:setLoc(6); return false;" class="site-blue-link">Label Division</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="#" OnFocus="blur();" onclick="javascript:setLoc(5); return false;" class="site-blue-link">Sales Managers</a>
								</td>
							</tr>

							<tr>
								<td style="width:50%; vertical-align:top;">
									<div style="margin:0px 0px 20px 0px;">
										<b>Street &amp; Mailing Address:</b>
										<br />
										Graphic Dimensions
										<br />
										49 Vose Farm Rd.
										<br />
										Suite 400
										<br />
										Peterborough, NH 03458
									</div>
									<div style="margin:0px 0px 20px 0px; font-size:11px;">
										Phone: 603.924.2000
										<br />
										Toll Free: 888.924.3676
										<br />
										Fax: 603.924.2004
									</div>
									<div style="margin:0px 0px 20px 0px;">
										<span style="font-weight:bold;">Quotes:</span> <a href="mailto:nh-quotes@graphdim.com" class="site-blue-link">nh-quotes@graphdim.com</a>
									</div>
								</td>
								<td width="50%">
									<div>
										<b>Email Addresses:</b>
										<br />									
										<div style="padding:0px 0px 8px 0px;">
											<span style="font-weight:bold; font-size:11px;">Customer Service Representatives:</span>
											<br />
											Sue Holt
											(<a href="mailto:sue.holt@graphdim.com" class="site-blue-link">sue.holt@graphdim.com</a>)
											<br />
											John Baird
											(<a href="mailto:john.baird@graphdim.com" class="site-blue-link">john.baird@graphdim.com</a>)
											<br />
											Donna DiRusso
											(<a href="mailto:donna.dirusso@graphdim.com" class="site-blue-link">donna.dirusso@graphdim.com</a>)
										</div>
										<div style="padding:0px 0px 8px 0px;">
											<span style="font-weight:bold; font-size:11px;">Prepress</span> (artwork. etc.):
											<br />
											(<a href="mailto:nhart@graphicdimensions.net" class="site-blue-link">nhart@graphicdimensions.net</a>)
										</div>
									</div>
								</td>
							</tr>
						</table>
					</div>

					<%if(((string)Request.QueryString["id"]).Equals("5")){ %>
					<div id="divSM" style="display:block;">
						<%} else { %>
						<div id="divSM" style="display:none;">
							<%} %>

              <map id="terr" name="terr">
              <area shape="poly" alt="" title="" coords="546,203,531,213,544,224,532,247,454,260,470,235,464,181,497,174,507,213,516,205" href="mailto:alan.thompson@graphdim.com" target="" />
              <area shape="poly" alt="" title="" coords="519,173,449,171,452,266,433,304,435,337,458,337,476,359,360,417,51,263,29,166,64,58,86,56,275,86,428,93,525,103,525,104" href="mailto:bill.reid@graphdim.com" target="" />
              <area shape="poly" alt="" title="" coords="627,224,456,259,433,338,461,334,468,346,606,392,613,389,613,365,575,316,627,237" href="mailto:Tim.haley@graphdim.com" target="" />
              <area shape="poly" alt="" title="" coords="679,78,655,51,635,51,633,84,583,117,582,132,556,138,554,153,512,179,499,175,510,204,546,201,546,239,631,223,626,185,630,160,664,134,653,120,661,99" href="mailto:john.murphy@graphdim.com" target="" />
              <area shape="rect" alt="" title="" coords="578,435,714,488" href="" target="" />
              <area shape="rect" alt="" title="" coords="12,395,171,494" href="mailto:bill.reid@graphdim.com" target="" />
              </map>



							<table style="width:100%;">
								<tr>
									<td>
										<div style="margin:0px 0px 20px 0px;">
											<span style="font-weight:bold; font-size:15px;">Graphic Dimensions Regional Sales Managers</span>
										</div>
									</td>
									<td style="text-align:right; vertical-align:top;">
										<a href="#" onfocus="blur();" onclick="javascript:setLoc(1); return false;" class="site-blue-link">Corporate</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="#" OnFocus="blur();" onclick="javascript:setLoc(2); return false;" class="site-blue-link">Georgia</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="#" OnFocus="blur();" onclick="javascript:setLoc(3); return false;" class="site-blue-link">Kentucky</a><br /><a href="#" OnFocus="blur();" onclick="javascript:setLoc(4); return false;" class="site-blue-link">New Hampshire</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="#" OnFocus="blur();" onclick="javascript:setLoc(6); return false;" class="site-blue-link">Label Division</a>
									</td>
								</tr>
							</table>

							<img src="images/territorymap/SALESMAP_2014.png" width="736" height="507" usemap="#terr" border="0" alt="" />

							<div style="text-align:justify; background-color:#ffffff; padding:6px 0px 20px 0px; font-size:12px; font-weight: normal;">
								<table style="border:0; width:100%; padding:0px;">
									<tr>
										<td style="width:50%;">
											<table style="border:0; width:100%; padding:0px;">
												<tr>
													<td style="width:35px; padding:0px 4px 0px 13px;">
														<img src="images/territorymap/bill.png" width="35" height="22" alt="" />
													</td>
													<td>
														<span style="font-weight: bold">Bill Reid</span><br />
														Vice President Sales &amp; Marketing<br />
														Toll Free: 800-699-2978<br />
														Office: 678-945-5191<br />
														<a href="mailto:bill.reid@graphdim.com" class="site-blue-link">bill.reid@graphdim.com</a><br />
														675 Hartman Rd<br />
														Austell, GA 30168<br />
													</td>
												</tr>
											</table>
										</td>
										<td style="width:50%;">
											<table style="border:0; width:100%; padding:0px;">
												<tr>
													<td style="width:35px; padding:0px 4px 0px 13px;">
														<img src="images/territorymap/doug.png" width="35" height="20" alt="" />
													</td>
													<td>
														<span style="font-weight: bold">Tim Haley II</span><br />
														Southeast Regional Sales Manager<br />
														Toll Free: 800-699-2978<br />
														Cell: 770-883-2222<br />
														<a href="mailto:Tim.haley@graphdim.com" class="site-blue-link">Tim.haley@graphdim.com</a><br />
														675 Hartman Road<br />
														Austell, GA 30168<br />
													</td>
												</tr>
											</table>
										</td>
									</tr>


									<tr>
										<td style="width:50%;">
											<table style="border:0; width:100%; padding:0px;">
												<tr>
													<td style="width:35px; padding:0px 4px 0px 13px;">
														<img src="images/territorymap/john.png" width="35" height="20" alt="" />
													</td>
													<td>
														<span style="font-weight: bold">John Murphy</span><br />
														Northeast &amp; Mid-Atlantic Regional Sales Manager <br />

														Office: 609-600-6028<br />
														<a href="mailto:john.murphy@graphdim.com" class="site-blue-link">john.murphy@graphdim.com</a><br />
														8 Firethorn Lane<br />
														Delran, NJ 08075<br />
													</td>
												</tr>
											</table>
										</td>
										<td style="width:50%;">
											<table style="border:0; width:100%; padding:0px;">
												<tr>
													<td style="width:35px; padding:0px 4px 0px 13px;">
														<img src="images/territorymap/alan.png" width="35" height="20" alt="" />
													</td>
													<td>
														<span style="font-weight: bold">Alan Thompson</span><br />
														General Manager<br />
														Toll Free: 800-726-3676<br />
														Office: 859-581-3989<br />
														<a href="mailto:alan.thompson@graphdim.com" class="site-blue-link">alan.thompson@graphdim.com</a><br />
														800 Brighton St.<br />
														Newport, KY 41072<br />
													</td>
												</tr>
											</table>
										</td>
									</tr>
								</table>
							</div>
						</div>



						<%if(((string)Request.QueryString["id"]).Equals("6")){ %>
						<div id="divNDL" style="display:block;">
							<%} else { %>
							<div id="divNDL" style="display:none;">
								<%} %>
								<table style="width:100%;">
									<tr>
										<td>
											<div style="margin:0px 0px 0px 0px;">
												<span style="font-weight:bold; font-size:15px;">Label Division</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												<img src="images/ndl_logo_no_tag_189.jpg" width="80" align="top" alt="" />
											</div>
										</td>
										<td style="text-align:right; vertical-align:top;">
											<a href="#" onfocus="blur();" onclick="javascript:setLoc(1); return false;" class="site-blue-link">Corporate</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="#" OnFocus="blur();" onclick="javascript:setLoc(2); return false;" class="site-blue-link">Georgia</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="#" OnFocus="blur();" onclick="javascript:setLoc(3); return false;" class="site-blue-link">Kentucky</a><br />
											<a href="#" OnFocus="blur();" onclick="javascript:setLoc(4); return false;" class="site-blue-link">New Hampshire</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="#" OnFocus="blur();" onclick="javascript:setLoc(5); return false;" class="site-blue-link">Sales Managers</a>
										</td>
									</tr>

									<tr>
										<td style="width:50%; vertical-align:top;">
											<div style="margin:0px 0px 20px 0px;">
												<table>
													<tr>
														<td>
															<b>Street Address:</b>
															<br />
															New Dimension Labels
															<br />
															675 Hartman Rd.
															<br />
															Austell, GA 30168
														</td>
														<td style="padding:0px 0px 0px 35px;">
														</td>
													</tr>
												</table>

											</div>
											<div style="margin:0px 0px 20px 0px;">
												<b>Mailing Address:</b>
												<br />
												New Dimension Labels
												<br />
												P.O. Box 4467
												<br />
												Austell, GA 30336
											</div>
											<div style="margin:0px 0px 20px 0px; font-size:11px;">
												Phone: 877-297-4914
												<br />
												Fax: 678-945-5185
												<br />
												Web: www.newdimensionlabels.com
											</div>
											<div style="margin:0px 0px 20px 0px;">
												<span style="font-weight:bold;">Quotes:</span> <a href="mailto:Quotes@newdimensionlabels.com" class="site-blue-link">Quotes@newdimensionlabels.com</a>
											</div>
										</td>
										<td width="50%">
											<div>
												<b>Email Addresses:</b>
												<br />
												<div style="padding:0px 0px 8px 0px;">
													Plant Manager
													<br />
													Steve Porter (<a href="mailto:steve.porter@newdimensionlabels.com" class="site-blue-link">steve.porter@newdimensionlabels.com</a>)
												</div>
												<div style="padding:0px 0px 8px 0px;">
													Customer Service Representative
													<br />
													Chris Knotts (<a href="mailto:chris.knotts@newdimensionlabels.com" class="site-blue-link">chris.knotts@newdimensionlabels.com</a>)
													<br />
													Delana Smallwood
													(<a href="mailto:delana.smallwood@graphdim.com" class="site-blue-link">delana.smallwood@graphdim.com</a>)
												</div>
												<div style="padding:0px 0px 8px 0px;">
													<span style="font-weight:bold; font-size:11px;">Prepress</span> (artwork. etc.):
													<br />
													(<a href="mailto:art@newdimensionlabels.com" class="site-blue-link">art@newdimensionlabels.com</a>)
												</div>
											</div>
										</td>
									</tr>
								</table>
							</div>
            </div>
          </asp:Content>
