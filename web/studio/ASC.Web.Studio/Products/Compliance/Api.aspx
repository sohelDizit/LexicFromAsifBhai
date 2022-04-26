<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Api.aspx.cs" MasterPageFile="Masters/BasicTemplate.Master" Inherits="ASC.Web.Sample.Api" %>

<%@ MasterType TypeName="ASC.Web.Sample.Masters.BasicTemplate" %>

<asp:Content ID="CommonContainer" ContentPlaceHolderID="BTPageContent" runat="server">
    <link rel="stylesheet" href="/Products/Sample/App_Themes/default/css/style.less">
    <div data-anchor="page" class="template-table-styled__Page-jfcroB eSiFEY">  
       <div class="sc-bdVaJa fwawyd">
          <div class="template-table-styled__StyledPopover-kOVdKU LWurS popover__Wrapper-hgJzjh kDSAyr">
             <div class="popover_element popover__FloatRight-cEiRFN dRaoLX">
                <div>
                   <svg width="14" height="14" viewBox="0 0 14 14" class="template-table-styled__StyledPlusSvg-kEMEkt goVACA" focusable="false" style="cursor: pointer;">
                      <path d="M11.0837 7.58332H7.58366V11.0833H6.41699V7.58332H2.91699V6.41666H6.41699V2.91666H7.58366V6.41666H11.0837V7.58332Z" fill="#707070"></path>
                   </svg>
                </div>
             </div>
             <div class="template-table-styled__HeaderRow-XgmBS hXBXek">
                <div class="template-table-styled__NameColumn-eBrdwF xIjpZ">
                   Section No.
                   <div class="sc-media-query__NoAboveTablet-dJeBeU gHrpYo">
                      <div><span class="template-table-styled__OptionToggle-fZPIZh gGVpkL">Extra options</span></div>
                   </div>
                </div>
                <div style="display:block" class="template-table-styled__TypeColumn-gGvcfd template-table-styled__HeaderTypeColumn-iPPvjz eRfnfN">Type of response</div>
             </div>
          </div>
          <div class="template-table-styled__Table-dltCbg htsCiZ" data-react-beautiful-dnd-droppable="0">
             <div data-anchor="itemId-a90d84a7-bc8c-4e03-ba60-94cce32b486c" data-react-beautiful-dnd-draggable="0" class="template-table-styled__TemplateItemRow-cibsdO iTIpgH">
                <div class="template-table-styled__RowContent-dlFDdy kmqyOa">
                   <div class="template-item-styled__StyledPopover-fOsVUY fNUdGW popover__Wrapper-hgJzjh kDSAyr">
                      <div class="popover_element popover__FloatLeft-fsYOgn jnwxil" style="display:none">
                         <div class="plus-button-vertical__Container-uLNiP fTMwJD">
                            <div class="plus-button-vertical__PlusButton-fvMXUK hdAgWh">
                               <svg width="21" height="21" viewBox="0 0 14 14" focusable="false">
                                  <path d="M11.0837 7.58332H7.58366V11.0833H6.41699V7.58332H2.91699V6.41666H6.41699V2.91666H7.58366V6.41666H11.0837V7.58332Z" fill="#1ecf93"></path>
                               </svg>
                               <div class="typography__Overline-klEOEm gKYXiX">Question</div>
                            </div>
                            <div class="plus-button-vertical__PlusButton-fvMXUK hdAgWh">
                               <svg width="21" height="21" viewBox="0 0 14 14" focusable="false">
                                  <g transform="translate(1 1)" fill="#006ed5" fill-rule="nonzero">
                                     <rect width="12" height="4.066" rx="0.733"></rect>
                                     <path d="M.8 5.947v5.164h10.4V5.947H.8zm0-.89h10.4c.442 0 .8.399.8.89v5.164c0 .491-.358.889-.8.889H.8c-.442 0-.8-.398-.8-.889V5.947c0-.491.358-.89.8-.89z"></path>
                                  </g>
                               </svg>
                               <div class="typography__Overline-klEOEm gKYXiX">Section</div>
                            </div>
                            <div data-anchor="btn-logic" class="plus-button-vertical__PlusButton-fvMXUK hdAgWh">
                               <svg width="21" height="21" viewBox="0 0 16 16">
                                  <g id="Circle-18px-Copy-3" stroke="none" stroke-width="1" fill="#ffb000" fill-rule="evenodd">
                                     <g id="Group-4" transform="translate(0.000000, -1.000000)" fill="#ffb000" fill-rule="nonzero">
                                        <polygon id="Path-2" points="8.02379309 9.04927963 12.7126798 4.39103922 14.2984452 5.98723726 8.95145518 11.2992796 0.991965569 11.2992796 0.991965569 9.04927963"></polygon>
                                        <polygon id="Triangle-2" transform="translate(13.707161, 5.012750) rotate(-300.000000) translate(-13.707161, -5.012750) " points="12.7936238 2.86156745 17.1210133 5.34365738 10.2933097 7.16393352"></polygon>
                                        <polygon id="Triangle-2-Copy" transform="translate(13.707161, 16.189221) rotate(-210.000000) translate(-13.707161, -16.189221) " points="12.7936238 14.038038 17.1210133 16.520128 10.2933097 18.3404041"></polygon>
                                        <polygon id="Path-2" transform="translate(12.014351, 14.281050) scale(1, -1) translate(-12.014351, -14.281050) " points="11.3160216 16.5606139 9.73025618 14.9644159 12.7126798 12.0014852 14.2984452 13.5976833"></polygon>
                                     </g>
                                  </g>
                               </svg>
                               <div class="typography__Overline-klEOEm gKYXiX">Logic</div>
                            </div>
                         </div>
                      </div>
                      <div class="template-item-styled__ItemContainer-idaejg cLKphS">
                         <div class="template-item-styled__ItemContent-MEYiz bMwmLo">
                            <div class="template-table-styled__NameColumn-eBrdwF xIjpZ">
                               <div class="template-item-styled__DragHandlePlaceholder-iptyvE dzbpnJ"></div>
                               <span class="mandatory-annotation__MandatoryAnnotation-bZHell cNaSwL" style="padding-left: 0.3rem;"></span>
                               <div data-anchor="question-item-label" tabindex="-1" class="template-item-styled__TextareaWrapper-dcWTgK fmhWZw" style="height:100px">
                                  <div class="selection-mask-styled__Anchor-eSxwyE selection-mask-styled__LeftAnchor-gFcpxY cBkyAT"></div>
                                  <div class="selection-mask-styled__Border-iaeYTc selection-mask-styled__HorizontalBorder-gVMBcz eYmpZa"></div>
                                  <div class="selection-mask-styled__Border-iaeYTc selection-mask-styled__HorizontalBorder-gVMBcz selection-mask-styled__BottomBorder-jxCEYk foznfr"></div>
                                  <div class="selection-mask-styled__Anchor-eSxwyE selection-mask-styled__RightAnchor-hSZNZp krNgJI"></div>
                                  <div class="selection-mask-styled__Background-cUwgzq gvoYEZ"><textarea  rows="4" cols="50" class="custom_name"  style="height: 100px;width:100%;" ></textarea></div>
                                  <div style="display: flex; align-items: center;">
                                     <div itemtype="question" tabindex="0" class="template-item-styled__LabelDisplay-UgAqo ktsnOT"><span class="template-item-styled__Placeholder-QwmwY iUEnuH"></span></div>
                                     <div class="sc-media-query__NoAboveTablet-dJeBeU gHrpYo" style="z-index: 1;">
                                        <button type="button" class="icon-button__StyledButton-dEvHnb bMrlJq">
                                           <svg viewBox="0 0 24 24" width="24" height="24" class="template-item-styled__StyledCheckSvg-iEZZgC fbhGge" focusable="false">
                                              <path fill="#707070" fill-rule="nonzero" d="M8.364 16.075L3.59 11.687 2 13.149 8.364 19 22 6.463 20.41 5z"></path>
                                           </svg>
                                        </button>
                                     </div>
                                     <div class="sc-media-query__NoAboveTablet-dJeBeU gHrpYo" style="z-index: 1;"></div>
                                  </div>
                               </div>
                            </div>
                         </div>
                         <div class="template-table-styled__TypeColumn-gGvcfd KBsjr" >
                            <div data-anchor="item-type" style="width: 100%;">
                               <div class="type-selector-styled__SelectedWrapper-cmKwYv OHGVd tether-target tether-pinned tether-pinned-bottom tether-element-attached-right tether-target-attached-right">
                                  <div>
                                    <div class="responses-menu-item-styled__ResponseContainer-kYTSCV duEhta ehnRsy selector_type">
	                                    <div class="item-type-menu-styled__ResponseSetMenuItemWrapper-gsvaPZ hKGfPn" fieldtype="2" position="0">
		                                    <div class="responses-menu-item-styled__ResponseContainer-kYTSCV duEhta">
			                                    <div color="#13855f" mode="light" class="response-chip__ResponseChip-dbZoxM elNvWK"><input type="text" class="input_drop" value="Compliant" disabled="disabled"></div>
			                                    <div color="#c60022" mode="light" class="response-chip__ResponseChip-dbZoxM kwhZuH"> <input type="text" class="input_drop" value="Non-Compliant" disabled="disabled"></div>
			                                    <div color="#707070" mode="light" class="response-chip__ResponseChip-dbZoxM PvXlO"><input type="text" style="width: 100px !important;" class="input_drop" value="Partial-Compliant" disabled="disabled"></div>
			                                    </div>
		                                    </div>
	                                    </div>
                                  </div>
                               </div>
                            </div>
                            <div data-anchor="item-setting-mobile" class="sc-media-query__NoAboveTablet-dJeBeU gHrpYo" style="border-left: 1px solid rgb(224, 224, 224);">
                               <div class="item-settings__StyledDropdownMenu-iaiTcS laGSea">
                                  <button type="button" data-testid="dropdown-trigger" class="dropdownMenu--trigger icon-button__StyledButton-dEvHnb bMrlJq">
                                     <svg width="24" height="24" viewBox="0 0 14 14" focusable="false">
                                        <g transform="translate(5.542 1.458)" fill="#707070" fill-rule="nonzero">
                                           <circle transform="rotate(90 1.458 5.542)" cx="1.458" cy="5.542" r="1.458"></circle>
                                           <circle transform="rotate(90 1.458 9.625)" cx="1.458" cy="9.625" r="1.458"></circle>
                                           <circle transform="rotate(90 1.458 1.458)" cx="1.458" cy="1.458" r="1.458"></circle>
                                        </g>
                                     </svg>
                                  </button>
                               </div>
                            </div>
                         </div>
                      </div>
                   </div>               
                </div>
             </div>
          </div>
           <div class="template-table-styled__StyledPopover-kOVdKU LWurS popover__Wrapper-hgJzjh kDSAyr">
             <div class="popover_element popover__FloatRight-cEiRFN dRaoLX">
                <div>
                   <svg width="14" height="14" viewBox="0 0 14 14" class="template-table-styled__StyledPlusSvg-kEMEkt goVACA" focusable="false" style="cursor: pointer;">
                      <path d="M11.0837 7.58332H7.58366V11.0833H6.41699V7.58332H2.91699V6.41666H6.41699V2.91666H7.58366V6.41666H11.0837V7.58332Z" fill="#707070"></path>
                   </svg>
                </div>
             </div>
             <div class="template-table-styled__HeaderRow-XgmBS hXBXek">
                <div class="template-table-styled__NameColumn-eBrdwF xIjpZ">
                   Relevant Provisions Law
                   <div class="sc-media-query__NoAboveTablet-dJeBeU gHrpYo">
                      <div><span class="template-table-styled__OptionToggle-fZPIZh gGVpkL">Extra options</span></div>
                   </div>
                </div>
             </div>
          </div>
           <div class="template-table-styled__NameColumn-eBrdwF xIjpZ" style="border: 1px solid rgb(224, 224, 224);">
                <div class="template-item-styled__DragHandlePlaceholder-iptyvE dzbpnJ"></div>
                <span class="mandatory-annotation__MandatoryAnnotation-bZHell cNaSwL" style="padding-left: 0.3rem;"></span>
                <div data-anchor="question-item-label" tabindex="-1" class="template-item-styled__TextareaWrapper-dcWTgK fmhWZw" style="height:100px">
                    <div class="selection-mask-styled__Anchor-eSxwyE selection-mask-styled__LeftAnchor-gFcpxY cBkyAT"></div>
                    <div class="selection-mask-styled__Border-iaeYTc selection-mask-styled__HorizontalBorder-gVMBcz eYmpZa"></div>
                    <div class="selection-mask-styled__Border-iaeYTc selection-mask-styled__HorizontalBorder-gVMBcz selection-mask-styled__BottomBorder-jxCEYk foznfr"></div>
                    <div class="selection-mask-styled__Anchor-eSxwyE selection-mask-styled__RightAnchor-hSZNZp krNgJI"></div>
                    <div class="selection-mask-styled__Background-cUwgzq gvoYEZ"><grammarly-extension style="position: absolute; top: 0px; left: 0px; pointer-events: none;" class="_1KJtL"></grammarly-extension>
                        <textarea rows="4" cols="50" class="custom_description" style="height: 100px;width:100%;" spellcheck="false"></textarea></div>
                    <div style="display: flex; align-items: center;">
                        <div itemtype="question" tabindex="0" class="template-item-styled__LabelDisplay-UgAqo ktsnOT"><span class="template-item-styled__Placeholder-QwmwY iUEnuH"></span></div>
                        <div class="sc-media-query__NoAboveTablet-dJeBeU gHrpYo" style="z-index: 1;">
                        <button type="button" class="icon-button__StyledButton-dEvHnb bMrlJq">
                            <svg viewBox="0 0 24 24" width="24" height="24" class="template-item-styled__StyledCheckSvg-iEZZgC fbhGge" focusable="false">
                                <path fill="#707070" fill-rule="nonzero" d="M8.364 16.075L3.59 11.687 2 13.149 8.364 19 22 6.463 20.41 5z"></path>
                            </svg>
                        </button>
                        </div>
                        <div class="sc-media-query__NoAboveTablet-dJeBeU gHrpYo" style="z-index: 1;"></div>
                    </div>
                </div>
                       
            </div>
           <div>
               <input type="checkbox" id="NotApplicable" name="NotApplicable">
              <label for="NotApplicable">Not Applicable</label>
            </div>





          <div class="template-table-styled__PageFooter-fUwWHl qciVL">
                <div data-anchor="btn-add-page" class="link__Link-crzYlF template-table-styled__StyledLink-btXQQu bpgpzj" style="margin: 0px;padding: 0.75rem 1.25rem;background-color: rgb(0, 110, 213);border: none;border-radius: 0.25rem;color: white;font-size: 0.875rem;cursor: pointer;opacity: 1;font-weight: 500;outline: 0px;text-align: center;text-overflow: ellipsis;transition: all 200ms ease 0s;user-select: none;word-break: normal;display: inline-flex;-webkit-box-pack:center;justify-content: center;-webkit-box-align: center;align-items: center;margin-top: 5px;">Save</div>          </div>
       </div>
    </div>

    <div class="tether-element tether-enabled tether-pinned tether-pinned-bottom tether-element-attached-right tether-target-attached-right " id="opoup_select" style="z-index: 20; top: 0px; left: 0px; position: absolute; transform: translateX(447px) translateY(209px) translateZ(0px);display:none">
	    <div class="stateless-dropdown-menu__StyledClickOutsideDetector-dQRuHN gHpoOS">
		    <div class="item-type-menu-styled__MenuScroll-ikuTfz brtqnh">
			    <div class="item-type-menu-styled__Menu-fIYijD jonipI">
				    <div class="item-type-menu-styled__MenuColumn-hsKlzN iOYWXs">
					    <div class="item-type-menu-styled__MenuHeader-dnBDFb eKJhQg">Other responses</div>
					    <div class="menu-items__MenuDiv-btFNUJ ehnRsy" fieldType="0" position="0"  mask="{'size':1000}" style="display: flex;">
						    <div class="type-icon__IconOutline-dWQQAp bzhydN">
							    <svg width="15" height="15" viewBox="0 0 14 14" focusable="false">
								    <path d="M2.33333333,2.33333333 L2.33333333,4.97716191 L3.7929974,4.97716191 L3.7929974,4.28724799 C3.7929974,4.03503038 3.985625,3.82984264 4.22242188,3.82984264 L6.11229427,3.82984264 L6.11229427,9.52966171 C6.11229427,9.88941502 5.83754427,10.1820993 5.49979427,10.1820993 L4.8983776,10.1820993 L4.8983776,11.6666667 L9.11447396,11.6666667 L9.11447396,10.1820993 L8.51305729,10.1820993 C8.17534375,10.1820993 7.90055729,9.88941502 7.90055729,9.52966171 L7.90055729,3.82982322 L9.77757813,3.82982322 C10.0143568,3.82982322 10.2070026,4.03501096 10.2070026,4.28722858 L10.2070026,4.97714249 L11.6666667,4.97714249 L11.6666667,2.33333333 L2.33333333,2.33333333 Z" fill="#fe8500" fill-rule="nonzero"></path>
							    </svg>
						    </div>
						    <span>Text answer</span>
					    </div>

					    <div class="menu-items__MenuDiv-btFNUJ ehnRsy" fieldType="3" position="0"  mask=""    style="display: flex;">
						    <div class="type-icon__IconOutline-dWQQAp dmpFpZ">
							    <svg viewBox="0 0 24 24" width="15" height="15" focusable="false">
								    <path fill="none" d="M0 0h24v24H0V0z"></path>
								    <path fill="#5e9cff" d="M19 3H5c-1.1 0-2 .9-2 2v14c0 1.1.9 2 2 2h14c1.1 0 2-.9 2-2V5c0-1.1-.9-2-2-2zm-8.29 13.29a.996.996 0 0 1-1.41 0L5.71 12.7a.996.996 0 1 1 1.41-1.41L10 14.17l6.88-6.88a.996.996 0 1 1 1.41 1.41l-7.58 7.59z"></path>
							    </svg>
						    </div>
						    <span>Checkbox</span>
					    </div>
					    <div class="item-type-menu-styled__MenuDivider-bWHwIs ejBShH"></div>
					    <div class="menu-items__MenuDiv-btFNUJ ehnRsy" fieldType="5" position="0"  mask=""  style="display: flex;">
						    <div class="type-icon__IconOutline-dWQQAp xEQaQ">
							    <svg viewBox="0 0 24 24" width="15" height="15" focusable="false">
								    <path fill="none" d="M0 0h24v24H0V0z"></path>
								    <path fill="#81b532" d="M20 3h-1V2c0-.55-.45-1-1-1s-1 .45-1 1v1H7V2c0-.55-.45-1-1-1s-1 .45-1 1v1H4c-1.1 0-2 .9-2 2v16c0 1.1.9 2 2 2h16c1.1 0 2-.9 2-2V5c0-1.1-.9-2-2-2zm-1 18H5c-.55 0-1-.45-1-1V8h16v12c0 .55-.45 1-1 1z"></path>
							    </svg>
						    </div>
						    <span>Date &amp; Time</span>
					    </div>


				    </div>
				    <div class="item-type-menu-styled__MenuColumn-hsKlzN iOYWXs">
					    <div class="item-type-menu-styled__SearchInputContainer-gmEGSV kNCyXx">
				
						    </div>
						    <div class="item-type-menu-styled__ResponsesContainer-iuMbzA deucfP">
							    <div class="item-type-menu-styled__ResponsesGroup-IwvdO kVTBpK">

                                   <div class="item-type-menu-styled__MenuResponseSetItem-CedXw fUeLRF menu-items__MenuDiv-btFNUJ ehnRsy">
									    <div class="item-type-menu-styled__ResponseSetMenuItemWrapper-gsvaPZ hKGfPn" fieldtype="2" position="0">
										    <div class="responses-menu-item-styled__ResponseContainer-kYTSCV duEhta">
											    <div color="#13855f" mode="light" class="response-chip__ResponseChip-dbZoxM elNvWK"><input type="text" class="input_drop" value="Compliant" disabled="disabled" /></div>
											    <div color="#c60022" mode="light" class="response-chip__ResponseChip-dbZoxM kwhZuH"> <input type="text" class="input_drop" value="Non-Compliant" disabled="disabled" /></div>
											    <div color="#707070" mode="light" class="response-chip__ResponseChip-dbZoxM PvXlO" style="width:100px"><input type="text" style="width: 100px !important;" class="input_drop" value="Partial-Compliant" disabled="disabled" /></div>
										    </div>
									    </div>
									    <button type="button" tabindex="-1" class="icon-button__StyledButton-dEvHnb bMrlJq">
										    <svg width="20" height="20" viewBox="0 0 14 14" focusable="false">
											    <path d="M2.313 9.734v1.954h1.953l5.76-5.761-1.953-1.953-5.76 5.76zm9.223-5.318a.519.519 0 0 0 0-.734l-1.218-1.219a.519.519 0 0 0-.735 0l-.953.953 1.953 1.953.953-.953z" fill-rule="nonzero" fill="#707070"></path>
										    </svg>
									    </button>
								    </div>

								    <div class="item-type-menu-styled__MenuResponseSetItem-CedXw fUeLRF menu-items__MenuDiv-btFNUJ ehnRsy">
									    <div class="item-type-menu-styled__ResponseSetMenuItemWrapper-gsvaPZ hKGfPn " fieldtype="2" position="0">
										    <div class="responses-menu-item-styled__ResponseContainer-kYTSCV duEhta">
											    <div color="#13855f" mode="light" class="response-chip__ResponseChip-dbZoxM elNvWK"><input type="text" class="input_drop" value="Good" disabled="disabled" />  </div>
											    <div color="#ffb000" mode="light" class="response-chip__ResponseChip-dbZoxM iYqMlu"><input type="text" class="input_drop" value="Fair" disabled="disabled" />  </div>
											    <div color="#c60022" mode="light" class="response-chip__ResponseChip-dbZoxM kwhZuH"><input type="text" class="input_drop" value="Poor" disabled="disabled" /></div>
											    <div color="#707070" mode="light" class="response-chip__ResponseChip-dbZoxM PvXlO"><input type="text" class="input_drop" value="N/A" disabled="disabled" /></div>
										    </div>
									    </div>
									    <button type="button" tabindex="-1" class="icon-button__StyledButton-dEvHnb bMrlJq">
										    <svg width="20" height="20" viewBox="0 0 14 14" focusable="false">
											    <path d="M2.313 9.734v1.954h1.953l5.76-5.761-1.953-1.953-5.76 5.76zm9.223-5.318a.519.519 0 0 0 0-.734l-1.218-1.219a.519.519 0 0 0-.735 0l-.953.953 1.953 1.953.953-.953z" fill-rule="nonzero" fill="#707070"></path>
										    </svg>
									    </button>
								    </div>
								    <div class="item-type-menu-styled__MenuResponseSetItem-CedXw fUeLRF menu-items__MenuDiv-btFNUJ ehnRsy">
									    <div class="item-type-menu-styled__ResponseSetMenuItemWrapper-gsvaPZ hKGfPn" fieldtype="2" position="0">
										    <div class="responses-menu-item-styled__ResponseContainer-kYTSCV duEhta">
											    <div color="#13855f" mode="light" class="response-chip__ResponseChip-dbZoxM elNvWK"><input type="text" class="input_drop" value="Safe" disabled="disabled" /> </div>
											    <div color="#c60022" mode="light" class="response-chip__ResponseChip-dbZoxM kwhZuH"><input type="text" class="input_drop" value="At Risk" disabled="disabled" /> </div>
											    <div color="#707070" mode="light" class="response-chip__ResponseChip-dbZoxM PvXlO"><input type="text" class="input_drop" value="N/A" disabled="disabled" /> </div>
										    </div>
									    </div>
									    <button type="button" tabindex="-1" class="icon-button__StyledButton-dEvHnb bMrlJq">
										    <svg width="20" height="20" viewBox="0 0 14 14" focusable="false">
											    <path d="M2.313 9.734v1.954h1.953l5.76-5.761-1.953-1.953-5.76 5.76zm9.223-5.318a.519.519 0 0 0 0-.734l-1.218-1.219a.519.519 0 0 0-.735 0l-.953.953 1.953 1.953.953-.953z" fill-rule="nonzero" fill="#707070"></path>
										    </svg>
									    </button>
								    </div>
								    <div class="item-type-menu-styled__MenuResponseSetItem-CedXw fUeLRF menu-items__MenuDiv-btFNUJ ehnRsy">
									    <div class="item-type-menu-styled__ResponseSetMenuItemWrapper-gsvaPZ hKGfPn" fieldtype="2" position="0">
										    <div class="responses-menu-item-styled__ResponseContainer-kYTSCV duEhta">
											    <div color="#13855f" mode="light" class="response-chip__ResponseChip-dbZoxM elNvWK"><input type="text" class="input_drop" value="Pass" disabled="disabled" />  </div>
											    <div color="#c60022" mode="light" class="response-chip__ResponseChip-dbZoxM kwhZuH"><input type="text" class="input_drop" value="Fail" disabled="disabled" /></div>
											    <div color="#707070" mode="light" class="response-chip__ResponseChip-dbZoxM PvXlO"><input type="text" class="input_drop" value="N/A" disabled="disabled" /> </div>
										    </div>
									    </div>
									    <button type="button" tabindex="-1" class="icon-button__StyledButton-dEvHnb bMrlJq">
										    <svg width="20" height="20" viewBox="0 0 14 14" focusable="false">
											    <path d="M2.313 9.734v1.954h1.953l5.76-5.761-1.953-1.953-5.76 5.76zm9.223-5.318a.519.519 0 0 0 0-.734l-1.218-1.219a.519.519 0 0 0-.735 0l-.953.953 1.953 1.953.953-.953z" fill-rule="nonzero" fill="#707070"></path>
										    </svg>
									    </button>
								    </div>




								    <div class="item-type-menu-styled__MenuResponseSetItem-CedXw fUeLRF menu-items__MenuDiv-btFNUJ lbFwiV">
									    <div class="hKGfPn" fieldtype="2" position="0">
										    <div class=" ehnRsy">
											    <div color="#13855f" mode="light" class=" elNvWK"><input type="text" class="input_drop" value="Yes" disabled="disabled" /></div>
											    <div color="#c60022" mode="light" class=" kwhZuH"><input type="text" class="input_drop" value="No" disabled="disabled" /></div>
											    <div color="#707070" mode="light" class=" PvXlO"><input type="text" class="input_drop" value="N/A" disabled="disabled" /></div>
										    </div>
									    </div>
									    <button type="button" tabindex="-1" class="icon-button__StyledButton-dEvHnb bMrlJq">
										    <svg width="20" height="20" viewBox="0 0 14 14" focusable="false">
											    <path d="M2.313 9.734v1.954h1.953l5.76-5.761-1.953-1.953-5.76 5.76zm9.223-5.318a.519.519 0 0 0 0-.734l-1.218-1.219a.519.519 0 0 0-.735 0l-.953.953 1.953 1.953.953-.953z" fill-rule="nonzero" fill="#707070"></path>
										    </svg>
									    </button>
								    </div>







							    </div>

						    </div>
					    </div>
				    </div>
			    </div>
		    </div>
	    </div>


    <style>
        textarea {
            padding: 10px;
        }

        nav#studio_sidePanel {
    width: 100%;
    padding-right: 0px;
    height: 262px;
}
    </style>



    <table id="MsoNormalTable" class="customTable">
            <thead><tr>
                    <td>Title</td>
                    <td>Type</td>
                    <td>Value</td>
                </tr>

            </thead>
            <tbody id="databody">
                
            </tbody>
        </table>

    <script type="text/javascript">

        $(document).mouseup(function (e) {
            if (!$("#opoup_select").is(e.target) && $("#opoup_select").has(e.target).length === 0) {
                $("#opoup_select").hide();
            }
        });
        $(document).ready(function () {
            GetAllTypes();
            $(".bMrlJq").click(function () {
                $(this).parents(".fUeLRF").find(".hKGfPn div div input.input_drop").removeAttr("disabled");
            })

            $(".fUeLRF").click(function () {
                $(".selector_type").html($(this).find(".hKGfPn").clone());
                $('#opoup_select').hide();
            })

            $(".ehnRsy:not(.ehnRsy.fUeLRF):not(.selector_type)").click(function () {
                $(".selector_type").html($(this).clone());
                $('#opoup_select').hide();
            })

            $(".KBsjr").click(function () {

                if (!$('#opoup_select').is(':visible')) {
                    $('#opoup_select').show();
                }
                else {
                    $('#opoup_select').hide();
                }
            })
            $("input.input_drop").blur(function () {
                $(".selector_type").html($(this).parents(".hKGfPn").clone());
            })
        });


        //var post_data =
        //{
        //    userName: "admin@ekt.ai",
        //    password: "Asdf_1234"
        //}
        //var token = '';
        //$.post('/api/2.0/authentication.json', post_data, function (response) {
        //    token = response["response"]["token"];
        //});


        $(".bpgpzj").click(function () {
            debugger;
            var text = $("textarea.custom_name").val();
            var notAppli = false;
            if ($('#NotApplicable').is(":checked")) {
                notAppli = true;
            }

            var fild_details = $(".selector_type .ehnRsy");
            var fieldtype = $(".selector_type div:first-child ").attr("fieldtype");
            var mask = []
            if (fieldtype == '2') {
                $(".selector_type .input_drop").each(function () {
                    debugger;
                    mask.push('"' + $(this).val() + '"')
                });
            }
            else {
                mask = $(".selector_type div:first-child ").attr("mask");
            }
            debugger;
            var create_custom_fild =
            {
                name: text,
                questionType: fieldtype,
                mandatory: false,
                mask: '[' + mask + ']',
                description: $("textarea.custom_description").val(),
                notApplicable: notAppli
            }
            console.log(create_custom_fild)
            $.ajax(
                {
                    url: "/api/2.0/sample/createquestion.json",
                    type: "post",
                    data: create_custom_fild,
                    success: function (response) {
                        //GetAllTypes();
                        debugger;
                    },
                    error: function (jqXHR, textStatus, errorThrown) {
                        debugger;
                        console.log(jqXHR);
                        console.log(textStatus);
                        console.log(errorThrown);
                        console.log(mask);
                    }
                });

            location.reload();
        })

        function GetAllTypes() {
            $.get("/api/2.0/sample/GetAllQuestion.json", function (data, status) {
                var response = data['response'];
                console.log(response);
                $.each(response, function (index, value) {
                    debugger;
                    var fieldType = "TextBox";
                    if (response[index].questionType == 2) {
                        fieldType = "Select Box";
                    }
                    else if (response[index].questionType == 3) {
                        fieldType = "CheckBox";
                    }
                    else if (response[index].questionType == 4) {
                        fieldType = "Heading";
                    }
                    else if (response[index].questionType == 5) {
                        fieldType = "Date";
                    }
                    $("#databody").append('<tr><td>' + response[index].name + '</td><td><span class="ftype">' + fieldType + '</span></td><td>' + response[index].mask.replace(/\[|\]/g, '').replace(/\"|\"/g, '').replace("{'size':1000}", "") + '</td></tr>');

                });
                $('#MsoNormalTable').DataTable();
            });
            

        }

        $(document).ready(function () {
            
        });
    </script>
   
     <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.22/css/jquery.dataTables.css">
<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.22/js/jquery.dataTables.js"></script>
</asp:Content>

