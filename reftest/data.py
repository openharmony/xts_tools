"""
 * Copyright (c) 2023 iSoftStone Information Technology (Group) Co.,Ltd.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
"""
test_data = [
    {
		'path': '/acid/acid2/reftest.html',
		'arr': ['/html/body/iframe', '/html/body/div/div[10]'],
		'num': 'test_acid_001',
		'cla': 'acid'
	},
	{
        'path': '/acid/acid3/test.html',
        'arr': ['//*[@id="bucket6"]', '//*[@id="b"]'],
        'num': 'test_acid_002',
        'cla': 'acid'
	},
	{
		'path': '/animation-worklet/worklet-animation-cancel.https.html',
		'arr': ['/html/body', '//*[@id="box"]'],
		'num': 'test_animation_worklet_001',
		'cla': 'animation'
	},
	{
		'path': '/animation-worklet/worklet-animation-get-timing-on-worklet-thread.https.html',
		'arr': ['/html/body', '//*[@id="box"]'],
		'num': 'test_animation_worklet_002',
		'cla': 'animation'
	},
	{
		'path': '/animation-worklet/worklet-animation-local-time-after-duration.https.html',
		'arr': ['/html/body', '//*[@id="box"]'],
		'num': 'test_animation_worklet_003',
		'cla': 'animation'
	},
	{
		'path': '/animation-worklet/worklet-animation-local-time-before-start.https.html',
		'arr': ['/html/body', '//*[@id="box"]'],
		'num': 'test_animation_worklet_004',
		'cla': 'animation'
	},
	{
		'path': '/animation-worklet/worklet-animation-local-time-null-2.https.html',
		'arr': ['/html/body', '//*[@id="control"]'],
		'num': 'test_animation_worklet_005',
		'cla': 'animation'
	},
	{
		'path': '/animation-worklet/worklet-animation-pause-immediately.https.html',
		'arr': ['/html/body', '//*[@id="box"]'],
		'num': 'test_animation_worklet_006',
		'cla': 'animation'
	},
	{
		'path': '/animation-worklet/worklet-animation-pause-resume.https.html',
		'arr': ['/html/body', '//*[@id="box"]'],
		'num': 'test_animation_worklet_007',
		'cla': 'animation'
	},
	{
		'path': '/animation-worklet/worklet-animation-set-keyframes.https.html',
		'arr': ['/html/body', '//*[@id="box"]'],
		'num': 'test_animation_worklet_008',
		'cla': 'animation'
	},
	{
		'path': '/animation-worklet/worklet-animation-set-timing.https.html',
		'arr': ['/html/body', '//*[@id="box"]'],
		'num': 'test_animation_worklet_009',
		'cla': 'animation'
	},
	{
		'path': '/animation-worklet/worklet-animation-start-delay.https.html',
		'arr': ['/html/body', '/html/body/div[2]'],
		'num': 'test_animation_worklet_010',
		'cla': 'animation'
	},
	{
		'path': '/animation-worklet/worklet-animation-with-non-ascii-name.https.html',
		'arr': ['/html/body', '/html/body/div[2]'],
		'num': 'test_animation_worklet_011',
		'cla': 'animation'
	},
	{
		'path': '/animation-worklet/worklet-animation-with-scroll-timeline-and-display-none.https.html',
		'arr': ['/html/body', '//*[@id="scroller"]'],
		'num': 'test_animation_worklet_012',
		'cla': 'animation'
	},
	{
		'path': '/animation-worklet/worklet-animation-with-scroll-timeline-and-overflow-hidden.https.html',
		'arr': ['/html/body', '//*[@id="scroller"]'],
		'num': 'test_animation_worklet_013',
		'cla': 'animation'
	},
	{
		'path': '/animation-worklet/worklet-animation-with-scroll-timeline-root-scroller.https.html',
		'arr': ['/html/body', '//*[@id="covered"]'],
		'num': 'test_animation_worklet_014',
		'cla': 'animation'
	},
	{
		'path': '/animation-worklet/worklet-animation-with-scroll-timeline.https.html',
		'arr': ['/html/body', '//*[@id="scroller"]'],
		'num': 'test_animation_worklet_015',
		'cla': 'animation'
	},
	{
		'path': '/apng/animated-png-timeout.html',
		'arr': ['/html/body/img'],
		'num': 'test_apng_001',
		'cla': 'apng'
	},
	{
		'path': '/avif/animated-avif-timeout.html',
		'arr': ['/html/body/img'],
		'num': 'test_avif_001',
		'cla': 'avif'
	},
	{
		'path': '/compat/webkit-background-origin-text.html',
		'arr': ['//*[@id="target"]', '/html/body/div'],
		'num': 'test_compat_001',
		'cla': 'compat'
	},
	{
		'path': '/compat/webkit-box-clamp-bottom-border.html',
		'arr': ['//*[@id="wb"]'],
		'num': 'test_compat_002',
		'cla': 'compat'
	},
	{
		'path': '/compat/webkit-box-clamp-visibility-change.html',
		'arr': ['//*[@id="wb"]'],
		'num': 'test_compat_003',
		'cla': 'compat'
	},
	{
		'path': '/compat/webkit-box-fieldset.html',
		'arr': ['/html/body/fieldset'],
		'num': 'test_compat_004',
		'cla': 'compat'
	},
	{
		'path': '/compat/webkit-box-horizontal-reverse-variants.html',
		'arr': ['/html/body/div[6]/div[4]'],
		'num': 'test_compat_005',
		'cla': 'compat'
	},
	{
		'path': '/compat/webkit-box-horizontal-rtl-variants.html',
		'arr': ['/html/body/div[6]/div[4]'],
		'num': 'test_compat_006',
		'cla': 'compat'
	},
	{
		'path': '/compat/webkit-box-rtl-flex.html',
		'arr': ['//*[@id="webkitbox"]', '/html/body/div'],
		'num': 'test_compat_007',
		'cla': 'compat'
	},
	{
		'path': '/compat/webkit-linear-gradient-diff-unprefixed.html',
		'arr': ['//*[@id="square"]'],
		'num': 'test_compat_008',
		'cla': 'compat'
	},
	{
		'path': '/compat/webkit-linear-gradient-line-bottom.html',
		'arr': ['//*[@id="inner"]', '/html/body/div'],
		'num': 'test_compat_009',
		'cla': 'compat'
	},
	{
		'path': '/compat/webkit-linear-gradient-line-left.html',
		'arr': ['//*[@id="inner"]', '/html/body/div'],
		'num': 'test_compat_010',
		'cla': 'compat'
	},
	{
		'path': '/compat/webkit-linear-gradient-line-right.html',
		'arr': ['//*[@id="inner"]', '/html/body/div'],
		'num': 'test_compat_011',
		'cla': 'compat'
	},
	{
		'path': '/compat/webkit-linear-gradient-line-top.html',
		'arr': ['//*[@id="inner"]', '/html/body/div'],
		'num': 'test_compat_012',
		'cla': 'compat'
	},
	{
		'path': '/compat/webkit-text-fill-color-property-001a.html',
		'arr': ['/html/body/div'],
		'num': 'test_compat_013',
		'cla': 'compat'
	},
	{
		'path': '/compat/webkit-text-fill-color-property-001b.html',
		'arr': ['/html/body/div'],
		'num': 'test_compat_014',
		'cla': 'compat'
	},
	{
		'path': '/compat/webkit-text-fill-color-property-001c.html',
		'arr': ['/html/body/div/span', '/html/body/div'],
		'num': 'test_compat_015',
		'cla': 'compat'
	},
	{
		'path': '/compat/webkit-text-fill-color-property-001d.html',
		'arr': ['/html/body/div'],
		'num': 'test_compat_016',
		'cla': 'compat'
	},
	{
		'path': '/compat/webkit-text-fill-color-property-002.html',
		'arr': ['/html/body/p'],
		'num': 'test_compat_017',
		'cla': 'compat'
	},
	{
		'path': '/compat/webkit-text-fill-color-property-003.html',
		'arr': ['/html/body/p'],
		'num': 'test_compat_018',
		'cla': 'compat'
	},
	{
		'path': '/compat/webkit-text-fill-color-property-004.html',
		'arr': ['/html/body/p'],
		'num': 'test_compat_019',
		'cla': 'compat'
	},
	{
		'path': '/compat/webkit-text-fill-color-property-005.html',
		'arr': ['/html/body/div[2]/p'],
		'num': 'test_compat_020',
		'cla': 'compat'
	},
	{
		'path': '/compat/webkit-text-fill-color-property-006.html',
		'arr': ['/html/body/div/span'],
		'num': 'test_compat_021',
		'cla': 'compat'
	},
	{
		'path': '/contenteditable/synthetic-height.tentative.html',
		'arr': ['/html/body/div[4]'],
		'num': 'test_contenteditable_001',
		'cla': 'contenteditable'
	},
	{
		'path': '/content-dpr/content-dpr-various-elements.html',
		'arr': ['//*[@id="canvas"]', '/html/body/div/canvas'],
		'num': 'test_content_dpr_001',
		'cla': 'content'
	},
	{
		'path': '/content-dpr/image-pseudo-element-content-dpr.html',
		'arr': ['/html/body/img', '/html/body/img[2]'],
		'num': 'test_content_dpr_002',
		'cla': 'content'
	},
	{
		'path': '/content-dpr/image-with-content-dpr-and-explicit-dimensions.html',
		'arr': ['/html/body/img[2]'],
		'num': 'test_content_dpr_003',
		'cla': 'content'
	},
	{
		'path': '/content-dpr/tiled-background-image-with-content-dpr.html',
		'arr': ['//*[@id="bg2"]'],
		'num': 'test_content_dpr_004',
		'cla': 'content'
	},
	{
		'path': '/content-dpr/tiled-background-svg-image-with-content-dpr.html',
		'arr': ['//*[@id="bg2"]'],
		'num': 'test_content_dpr_005',
		'cla': 'content'
	},
	{
		'path': '/custom-elements/form-associated/ElementInternals-reportValidity-bubble.html',
		'arr': ['/html/body/unfocusable-custom-element', '/html/body/focusable-custom-element'],
		'num': 'test_custom_elements_001',
		'cla': 'custom'
	},
	{
		'path': '/density-size-correction/density-corrected-image-svg-aspect-ratio-cross-origin.sub.html',
		'arr': ['/html/body'],
		'num': 'test_density_size_correction_001',
		'cla': 'density'
	},
	{
		'path': '/density-size-correction/density-corrected-image-svg-aspect-ratio.html',
		'arr': ['/html/body'],
		'num': 'test_density_size_correction_002',
		'cla': 'density'
	},
	{
		'path': '/density-size-correction/density-corrected-image-svg-cross-origin.sub.html',
		'arr': ['/html/body'],
		'num': 'test_density_size_correction_003',
		'cla': 'density'
	},
	{
		'path': '/density-size-correction/density-corrected-image-svg.html',
		'arr': ['/html/body'],
		'num': 'test_density_size_correction_004',
		'cla': 'density'
	},
	{
		'path': '/density-size-correction/density-corrected-size-bg-cross-origin.sub.html',
		'arr': ['/html/body/div[7]'],
		'num': 'test_density_size_correction_005',
		'cla': 'density'
	},
	{
		'path': '/density-size-correction/density-corrected-size-bg-with-radius.html',
		'arr': ['/html/body/div[7]'],
		'num': 'test_density_size_correction_006',
		'cla': 'density'
	},
	{
		'path': '/density-size-correction/density-corrected-size-bg.html',
		'arr': ['/html/body/div[7]'],
		'num': 'test_density_size_correction_007',
		'cla': 'density'
	},
	{
		'path': '/density-size-correction/density-corrected-size-img-cross-origin.sub.html',
		'arr': ['/html/body/img[4]'],
		'num': 'test_density_size_correction_008',
		'cla': 'density'
	},
	{
		'path': '/density-size-correction/density-corrected-size-img.html',
		'arr': ['/html/body/img[4]'],
		'num': 'test_density_size_correction_009',
		'cla': 'density'
	},
	{
		'path': '/density-size-correction/density-corrected-size-pseudo-elements-cross-origin.sub.html',
		'arr': ['/html/body/div[2]', '/html/body/div[2]/img'],
		'num': 'test_density_size_correction_010',
		'cla': 'density'
	},
	{
		'path': '/density-size-correction/density-corrected-size-pseudo-elements.html',
		'arr': ['/html/body/div[2]', '/html/body/div[2]/img'],
		'num': 'test_density_size_correction_011',
		'cla': 'density'
	},
	{
		'path': '/density-size-correction/density-corrected-various-elements-cross-origin.sub.html',
		'arr': ['/html/body/div/div[2]/input', '/html/body/div/div[3]/img'],
		'num': 'test_density_size_correction_012',
		'cla': 'density'
	},
	{
		'path': '/density-size-correction/density-corrected-various-elements.html',
		'arr': ['/html/body/div/div[2]/input', '/html/body/div/div[3]/img'],
		'num': 'test_density_size_correction_013',
		'cla': 'density'
	},
	{
		'path': '/density-size-correction/image-set-001-cross-origin.sub.html',
		'arr': ['/html/body/div'],
		'num': 'test_density_size_correction_014',
		'cla': 'density'
	},
	{
		'path': '/density-size-correction/image-set-001.html',
		'arr': ['/html/body/div'],
		'num': 'test_density_size_correction_015',
		'cla': 'density'
	},
	{
		'path': '/density-size-correction/image-set-002-cross-origin.sub.html',
		'arr': ['/html/body/div'],
		'num': 'test_density_size_correction_016',
		'cla': 'density'
	},
	{
		'path': '/density-size-correction/image-set-002.html',
		'arr': ['/html/body/div'],
		'num': 'test_density_size_correction_017',
		'cla': 'density'
	},
	{
		'path': '/density-size-correction/image-set-003.html',
		'arr': ['/html/body/div'],
		'num': 'test_density_size_correction_018',
		'cla': 'density'
	},
	{
		'path': '/density-size-correction/srcset-cross-origin.sub.html',
		'arr': ['/html/body/img[2]'],
		'num': 'test_density_size_correction_019',
		'cla': 'density'
	},
	{
		'path': '/density-size-correction/srcset.html',
		'arr': ['/html/body/img[2]'],
		'num': 'test_density_size_correction_020',
		'cla': 'density'
	},
	{
		'path': '/document-policy/font-display/override-to-optional.tentative.html',
		'arr': ['//*[@id="container"]/tbody'],
		'num': 'test_document_policy_001',
		'cla': 'document'
	},
	{
		'path': '/dom/nodes/remove-from-shadow-host-and-adopt-into-iframe.html',
		'arr': ['//*[@id="iframe"]', '/html/body/div'],
		'num': 'test_dom_001',
		'cla': 'dom'
	},
	{
		'path': '/dom/slot-recalc.html',
		'arr': ['/html/body/div', '/html/body/div/p[2]'],
		'num': 'test_dom_002',
		'cla': 'dom'
	},
	{
		'path': '/dom/xslt/sort.html',
		'arr': ['//*[@id="container"]/div[4]', '/html/body/div/div[4]'],
		'num': 'test_dom_003',
		'cla': 'dom'
	},
	{
		'path': '/encoding/eof-shift_jis.html',
		'arr': ['/html/body'],
		'num': 'test_encoding_001',
		'cla': 'encoding'
	},
	{
		'path': '/encoding/eof-utf-8-one.html',
		'arr': ['/html/body'],
		'num': 'test_encoding_002',
		'cla': 'encoding'
	},
	{
		'path': '/encoding/eof-utf-8-three.html',
		'arr': ['/html/body'],
		'num': 'test_encoding_003',
		'cla': 'encoding'
	},
	{
		'path': '/encoding/eof-utf-8-two.html',
		'arr': ['/html/body'],
		'num': 'test_encoding_004',
		'cla': 'encoding'
	},
	{
		'path': '/feature-policy/experimental-features/vertical-scroll-disabled-scrollbar-tentative.html',
		'arr': ['/html/body/iframe'],
		'num': 'test_feature_policy_001',
		'cla': 'feature'
	},
	{
		'path': '/fetch/corb/img-html-correctly-labeled.sub.html',
		'arr': ['/html/body/img'],
		'num': 'test_fetch_001',
		'cla': 'fetch'
	},
	{
		'path': '/fetch/corb/img-png-mislabeled-as-html-nosniff.tentative.sub.html',
		'arr': ['/html/body/img'],
		'num': 'test_fetch_002',
		'cla': 'fetch'
	},
	{
		'path': '/fetch/corb/img-png-mislabeled-as-html.sub.html',
		'arr': ['/html/body/img'],
		'num': 'test_fetch_003',
		'cla': 'fetch'
	},
	{
		'path': '/fetch/corb/img-svg-doctype-html-mimetype-empty.sub.html',
		'arr': ['/html/body/img'],
		'num': 'test_fetch_004',
		'cla': 'fetch'
	},
	{
		'path': '/fetch/corb/img-svg-doctype-html-mimetype-svg.sub.html',
		'arr': ['/html/body'],
		'num': 'test_fetch_005',
		'cla': 'fetch'
	},
	{
		'path': '/fetch/corb/img-svg-labeled-as-dash.sub.html',
		'arr': ['/html/body/img'],
		'num': 'test_fetch_006',
		'cla': 'fetch'
	},
	{
		'path': '/fetch/corb/img-svg-labeled-as-svg-xml.sub.html',
		'arr': ['/html/body'],
		'num': 'test_fetch_007',
		'cla': 'fetch'
	},
	{
		'path': '/fetch/corb/img-svg-xml-decl.sub.html',
		'arr': ['/html/body'],
		'num': 'test_fetch_008',
		'cla': 'fetch'
	},
	{
		'path': '/fetch/http-cache/basic-auth-cache-test.html',
		'arr': ['/html/body/img', '/html/body/img[2]'],
		'num': 'test_fetch_009',
		'cla': 'fetch'
	},
	{
		'path': '/fetch/orb/tentative/img-png-mislabeled-as-html.sub.html',
		'arr': ['/html/body'],
		'num': 'test_fetch_010',
		'cla': 'fetch'
	},
	{
		'path': '/fetch/orb/tentative/img-png-unlabeled.sub.html',
		'arr': ['/html/body'],
		'num': 'test_fetch_011',
		'cla': 'fetch'
	},
	{
		'path': '/FileAPI/url/url_xmlhttprequest_img.html',
		'arr': ['//*[@id="fileDisplay"]', '/html/body/p[2]/img'],
		'num': 'test_FileAPI_001',
		'cla': 'FileAPI'
	},
	{
		'path': '/forced-colors-mode/backplate/forced-colors-mode-backplate-01.html',
		'arr': ['/html/body'],
		'num': 'test_forced_colors_mode_001',
		'cla': 'forced'
	},
	{
		'path': '/forced-colors-mode/backplate/forced-colors-mode-backplate-02.html',
		'arr': ['/html/body'],
		'num': 'test_forced_colors_mode_002',
		'cla': 'forced'
	},
	{
		'path': '/forced-colors-mode/backplate/forced-colors-mode-backplate-03.html',
		'arr': ['/html/body'],
		'num': 'test_forced_colors_mode_003',
		'cla': 'forced'
	},
	{
		'path': '/forced-colors-mode/backplate/forced-colors-mode-backplate-04.html',
		'arr': ['/html/body'],
		'num': 'test_forced_colors_mode_004',
		'cla': 'forced'
	},
	{
		'path': '/forced-colors-mode/backplate/forced-colors-mode-backplate-05.html',
		'arr': ['/html/body'],
		'num': 'test_forced_colors_mode_005',
		'cla': 'forced'
	},
	{
		'path': '/forced-colors-mode/backplate/forced-colors-mode-backplate-06.html',
		'arr': ['/html/body'],
		'num': 'test_forced_colors_mode_006',
		'cla': 'forced'
	},
	{
		'path': '/forced-colors-mode/backplate/forced-colors-mode-backplate-08.html',
		'arr': ['/html/body'],
		'num': 'test_forced_colors_mode_007',
		'cla': 'forced'
	},
	{
		'path': '/forced-colors-mode/backplate/forced-colors-mode-backplate-09.html',
		'arr': ['/html/body'],
		'num': 'test_forced_colors_mode_008',
		'cla': 'forced'
	},
	{
		'path': '/forced-colors-mode/backplate/forced-colors-mode-backplate-10.html',
		'arr': ['/html/body'],
		'num': 'test_forced_colors_mode_009',
		'cla': 'forced'
	},
	{
		'path': '/forced-colors-mode/backplate/forced-colors-mode-backplate-11.html',
		'arr': ['/html/body'],
		'num': 'test_forced_colors_mode_010',
		'cla': 'forced'
	},
	{
		'path': '/forced-colors-mode/forced-colors-mode-01.html',
		'arr': ['/html/body'],
		'num': 'test_forced_colors_mode_011',
		'cla': 'forced'
	},
	{
		'path': '/forced-colors-mode/forced-colors-mode-02.html',
		'arr': ['/html/body'],
		'num': 'test_forced_colors_mode_012',
		'cla': 'forced'
	},
	{
		'path': '/forced-colors-mode/forced-colors-mode-05.html',
		'arr': ['/html/body'],
		'num': 'test_forced_colors_mode_013',
		'cla': 'forced'
	},
	{
		'path': '/forced-colors-mode/forced-colors-mode-06.html',
		'arr': ['/html/body'],
		'num': 'test_forced_colors_mode_014',
		'cla': 'forced'
	},
	{
		'path': '/forced-colors-mode/forced-colors-mode-07.html',
		'arr': ['/html/body'],
		'num': 'test_forced_colors_mode_015',
		'cla': 'forced'
	},
	{
		'path': '/forced-colors-mode/forced-colors-mode-08.html',
		'arr': ['/html/body'],
		'num': 'test_forced_colors_mode_016',
		'cla': 'forced'
	},
	{
		'path': '/forced-colors-mode/forced-colors-mode-14.html',
		'arr': ['/html/body'],
		'num': 'test_forced_colors_mode_017',
		'cla': 'forced'
	},
	{
		'path': '/forced-colors-mode/forced-colors-mode-17.html',
		'arr': ['/html/body'],
		'num': 'test_forced_colors_mode_018',
		'cla': 'forced'
	},
	{
		'path': '/forced-colors-mode/forced-colors-mode-18.html',
		'arr': ['/html/body'],
		'num': 'test_forced_colors_mode_019',
		'cla': 'forced'
	},
	{
		'path': '/forced-colors-mode/forced-colors-mode-19.html',
		'arr': ['/html/body'],
		'num': 'test_forced_colors_mode_020',
		'cla': 'forced'
	},
	{
		'path': '/forced-colors-mode/forced-colors-mode-23.html',
		'arr': ['/html/body'],
		'num': 'test_forced_colors_mode_021',
		'cla': 'forced'
	},
	{
		'path': '/forced-colors-mode/forced-colors-mode-25.html',
		'arr': ['/html/body'],
		'num': 'test_forced_colors_mode_022',
		'cla': 'forced'
	},
	{
		'path': '/forced-colors-mode/forced-colors-mode-26.html',
		'arr': ['/html/body'],
		'num': 'test_forced_colors_mode_023',
		'cla': 'forced'
	},
	{
		'path': '/forced-colors-mode/forced-colors-mode-28.html',
		'arr': ['/html/body'],
		'num': 'test_forced_colors_mode_024',
		'cla': 'forced'
	},
	{
		'path': '/forced-colors-mode/forced-colors-mode-29.html',
		'arr': ['/html/body'],
		'num': 'test_forced_colors_mode_025',
		'cla': 'forced'
	},
	{
		'path': '/forced-colors-mode/forced-colors-mode-30.html',
		'arr': ['/html/body'],
		'num': 'test_forced_colors_mode_026',
		'cla': 'forced'
	},
	{
		'path': '/forced-colors-mode/forced-colors-mode-31.html',
		'arr': ['/html/body'],
		'num': 'test_forced_colors_mode_027',
		'cla': 'forced'
	},
	{
		'path': '/forced-colors-mode/forced-colors-mode-33.html',
		'arr': ['/html/body'],
		'num': 'test_forced_colors_mode_028',
		'cla': 'forced'
	},
	{
		'path': '/forced-colors-mode/forced-colors-mode-34.html',
		'arr': ['/html/body'],
		'num': 'test_forced_colors_mode_029',
		'cla': 'forced'
	},
	{
		'path': '/forced-colors-mode/forced-colors-mode-35.html',
		'arr': ['/html/body'],
		'num': 'test_forced_colors_mode_030',
		'cla': 'forced'
	},
	{
		'path': '/forced-colors-mode/forced-colors-mode-36.html',
		'arr': ['/html/body'],
		'num': 'test_forced_colors_mode_031',
		'cla': 'forced'
	},
	{
		'path': '/forced-colors-mode/forced-colors-mode-37.html',
		'arr': ['/html/body'],
		'num': 'test_forced_colors_mode_032',
		'cla': 'forced'
	},
	{
		'path': '/forced-colors-mode/forced-colors-mode-38.html',
		'arr': ['/html/body'],
		'num': 'test_forced_colors_mode_033',
		'cla': 'forced'
	},
	{
		'path': '/forced-colors-mode/forced-colors-mode-39.html',
		'arr': ['/html/body'],
		'num': 'test_forced_colors_mode_034',
		'cla': 'forced'
	},
	{
		'path': '/forced-colors-mode/forced-colors-mode-42.html',
		'arr': ['/html/body'],
		'num': 'test_forced_colors_mode_035',
		'cla': 'forced'
	},
	{
		'path': '/forced-colors-mode/forced-colors-mode-43.html',
		'arr': ['/html/body'],
		'num': 'test_forced_colors_mode_036',
		'cla': 'forced'
	},
	{
		'path': '/forced-colors-mode/forced-colors-mode-44.html',
		'arr': ['/html/body'],
		'num': 'test_forced_colors_mode_037',
		'cla': 'forced'
	},
	{
		'path': '/forced-colors-mode/forced-colors-mode-45.html',
		'arr': ['/html/body'],
		'num': 'test_forced_colors_mode_038',
		'cla': 'forced'
	},
	{
		'path': '/forced-colors-mode/forced-colors-mode-46.html',
		'arr': ['/html/body'],
		'num': 'test_forced_colors_mode_039',
		'cla': 'forced'
	},
	{
		'path': '/forced-colors-mode/forced-colors-mode-47.html',
		'arr': ['/html/body'],
		'num': 'test_forced_colors_mode_040',
		'cla': 'forced'
	},
	{
		'path': '/forced-colors-mode/forced-colors-mode-48.html',
		'arr': ['/html/body'],
		'num': 'test_forced_colors_mode_041',
		'cla': 'forced'
	},
	{
		'path': '/forced-colors-mode/forced-colors-mode-49.html',
		'arr': ['/html/body'],
		'num': 'test_forced_colors_mode_042',
		'cla': 'forced'
	},
	{
		'path': '/forced-colors-mode/forced-colors-mode-52.html',
		'arr': ['/html/body'],
		'num': 'test_forced_colors_mode_043',
		'cla': 'forced'
	},
	{
		'path': '/forced-colors-mode/forced-colors-mode-53.html',
		'arr': ['/html/body'],
		'num': 'test_forced_colors_mode_044',
		'cla': 'forced'
	},
	{
		'path': '/fullscreen/rendering/backdrop-iframe.html',
		'arr': ['/html/body/iframe', '/html/body'],
		'num': 'test_fullscreen_001',
		'cla': 'fullscreen'
	},
	{
		'path': '/fullscreen/rendering/backdrop-object.html',
		'arr': ['/html/body/object', '/html/body/div'],
		'num': 'test_fullscreen_002',
		'cla': 'fullscreen'
	},
	{
		'path': '/fullscreen/rendering/fullscreen-root-fills-page.html',
		'arr': ['//*[@id="wpt-test-driver-bless-1"]', '/html/body'],
		'num': 'test_fullscreen_003',
		'cla': 'fullscreen'
	},
	{
		'path': '/infrastructure/assumptions/ahem-ref.html',
		'arr': ['/html/body/table/tbody/tr[17]/td[6]'],
		'num': 'test_infrastructure_001',
		'cla': 'infrastructure'
	},
	{
		'path': '/infrastructure/assumptions/ahem.html',
		'arr': ['/html/body/table/tbody/tr[17]/td[6]'],
		'num': 'test_infrastructure_002',
		'cla': 'infrastructure'
	},
	{
		'path': '/infrastructure/assumptions/blank.html',
		'arr': ['/html/body', '*'],
		'num': 'test_infrastructure_003',
		'cla': 'infrastructure'
	},
	{
		'path': '/infrastructure/assumptions/canvas-background.html',
		'arr': ['/html/body/p', '*'],
		'num': 'test_infrastructure_004',
		'cla': 'infrastructure'
	},
	{
		'path': '/infrastructure/assumptions/initial-color.html',
		'arr': ['/html/body/p'],
		'num': 'test_infrastructure_005',
		'cla': 'infrastructure'
	},
	{
		'path': '/infrastructure/assumptions/medium-font-size.html',
		'arr': ['/html/body/p'],
		'num': 'test_infrastructure_006',
		'cla': 'infrastructure'
	},
	{
		'path': '/infrastructure/assumptions/min-font-size.html',
		'arr': ['/html/body/p'],
		'num': 'test_infrastructure_007',
		'cla': 'infrastructure'
	},
	{
		'path': '/infrastructure/reftest/green-ref.html',
		'arr': ['/html/body'],
		'num': 'test_infrastructure_008',
		'cla': 'infrastructure'
	},
	{
		'path': '/infrastructure/reftest/legacy/fuzzy-ref-2.html',
		'arr': ['/html/body/div'],
		'num': 'test_infrastructure_009',
		'cla': 'infrastructure'
	},
	{
		'path': '/infrastructure/reftest/legacy/reftest_and_fail.html',
		'arr': ['/html/body'],
		'num': 'test_infrastructure_010',
		'cla': 'infrastructure'
	},
	{
		'path': '/infrastructure/reftest/legacy/reftest_and_fail_0-ref.html',
		'arr': ['/html/body'],
		'num': 'test_infrastructure_011',
		'cla': 'infrastructure'
	},
	{
		'path': '/infrastructure/reftest/legacy/reftest_and_mismatch.html',
		'arr': ['/html/body'],
		'num': 'test_infrastructure_012',
		'cla': 'infrastructure'
	},
	{
		'path': '/infrastructure/reftest/legacy/reftest_and_mismatch_0.html',
		'arr': ['/html/body'],
		'num': 'test_infrastructure_013',
		'cla': 'infrastructure'
	},
	{
		'path': '/infrastructure/reftest/legacy/reftest_cycle.html',
		'arr': ['/html/body'],
		'num': 'test_infrastructure_014',
		'cla': 'infrastructure'
	},
	{
		'path': '/infrastructure/reftest/legacy/reftest_cycle_0-ref.html',
		'arr': ['/html/body'],
		'num': 'test_infrastructure_015',
		'cla': 'infrastructure'
	},
	{
		'path': '/infrastructure/reftest/legacy/reftest_cycle_1-ref.html',
		'arr': ['/html/body'],
		'num': 'test_infrastructure_016',
		'cla': 'infrastructure'
	},
	{
		'path': '/infrastructure/reftest/legacy/reftest_cycle_fail.html',
		'arr': ['/html/body'],
		'num': 'test_infrastructure_017',
		'cla': 'infrastructure'
	},
	{
		'path': '/infrastructure/reftest/legacy/reftest_cycle_fail_0-ref.html',
		'arr': ['/html/body'],
		'num': 'test_infrastructure_018',
		'cla': 'infrastructure'
	},
	{
		'path': '/infrastructure/reftest/legacy/reftest_fuzzy_chain_ini.html',
		'arr': ['/html/body/div'],
		'num': 'test_infrastructure_019',
		'cla': 'infrastructure'
	},
	{
		'path': '/infrastructure/reftest/reftest.https.html',
		'arr': ['/html/body'],
		'num': 'test_infrastructure_020',
		'cla': 'infrastructure'
	},
	{
		'path': '/infrastructure/reftest/reftest.www.sub.html',
		'arr': ['/html/body'],
		'num': 'test_infrastructure_021',
		'cla': 'infrastructure'
	},
	{
		'path': '/infrastructure/reftest/reftest_fuzzy_1.html',
		'arr': ['/html/body/div'],
		'num': 'test_infrastructure_022',
		'cla': 'infrastructure'
	},
	{
		'path': '/infrastructure/reftest/reftest_fuzzy_ini_full.html',
		'arr': ['/html/body/div'],
		'num': 'test_infrastructure_023',
		'cla': 'infrastructure'
	},
	{
		'path': '/infrastructure/reftest/reftest_fuzzy_ini_ref_only.html',
		'arr': ['/html/body/div'],
		'num': 'test_infrastructure_024',
		'cla': 'infrastructure'
	},
	{
		'path': '/infrastructure/reftest/reftest_fuzzy_ini_short.html',
		'arr': ['/html/body/div'],
		'num': 'test_infrastructure_025',
		'cla': 'infrastructure'
	},
	{
		'path': '/infrastructure/reftest/reftest_fuzzy_no_differences.html',
		'arr': ['/html/body/div'],
		'num': 'test_infrastructure_026',
		'cla': 'infrastructure'
	},
	{
		'path': '/infrastructure/reftest/reftest_fuzzy_no_differences_1.html',
		'arr': ['/html/body/div'],
		'num': 'test_infrastructure_027',
		'cla': 'infrastructure'
	},
	{
		'path': '/infrastructure/reftest/reftest_match.html',
		'arr': ['/html/body'],
		'num': 'test_infrastructure_028',
		'cla': 'infrastructure'
	},
	{
		'path': '/infrastructure/reftest/reftest_match_and_mismatch-0.html',
		'arr': ['/html/body'],
		'num': 'test_infrastructure_029',
		'cla': 'infrastructure'
	},
	{
		'path': '/infrastructure/reftest/reftest_match_and_mismatch-1.html',
		'arr': ['/html/body'],
		'num': 'test_infrastructure_030',
		'cla': 'infrastructure'
	},
	{
		'path': '/infrastructure/reftest/reftest_match_and_mismatch-2.html',
		'arr': ['/html/body'],
		'num': 'test_infrastructure_031',
		'cla': 'infrastructure'
	},
	{
		'path': '/infrastructure/reftest/reftest_match_and_mismatch-3.html',
		'arr': ['/html/body'],
		'num': 'test_infrastructure_032',
		'cla': 'infrastructure'
	},
	{
		'path': '/infrastructure/reftest/reftest_match_and_mismatch-4.html',
		'arr': ['/html/body'],
		'num': 'test_infrastructure_033',
		'cla': 'infrastructure'
	},
	{
		'path': '/infrastructure/reftest/reftest_match_and_mismatch-5.html',
		'arr': ['/html/body'],
		'num': 'test_infrastructure_034',
		'cla': 'infrastructure'
	},
	{
		'path': '/infrastructure/reftest/reftest_match_and_mismatch-6.html',
		'arr': ['/html/body'],
		'num': 'test_infrastructure_035',
		'cla': 'infrastructure'
	},
	{
		'path': '/infrastructure/reftest/reftest_match_and_mismatch-7.html',
		'arr': ['/html/body'],
		'num': 'test_infrastructure_036',
		'cla': 'infrastructure'
	},
	{
		'path': '/infrastructure/reftest/reftest_match_fail.html',
		'arr': ['/html/body'],
		'num': 'test_infrastructure_037',
		'cla': 'infrastructure'
	},
	{
		'path': '/infrastructure/reftest/reftest_mismatch.html',
		'arr': ['/html/body'],
		'num': 'test_infrastructure_038',
		'cla': 'infrastructure'
	},
	{
		'path': '/infrastructure/reftest/reftest_mismatch_fail.html',
		'arr': ['/html/body'],
		'num': 'test_infrastructure_039',
		'cla': 'infrastructure'
	},
	{
		'path': '/infrastructure/reftest/reftest_multiple_match-0.html',
		'arr': ['/html/body'],
		'num': 'test_infrastructure_040',
		'cla': 'infrastructure'
	},
	{
		'path': '/infrastructure/reftest/reftest_multiple_match-1.html',
		'arr': ['/html/body'],
		'num': 'test_infrastructure_041',
		'cla': 'infrastructure'
	},
	{
		'path': '/infrastructure/reftest/reftest_multiple_mismatch-0.html',
		'arr': ['/html/body'],
		'num': 'test_infrastructure_042',
		'cla': 'infrastructure'
	},
	{
		'path': '/infrastructure/reftest/reftest_multiple_mismatch-1.html',
		'arr': ['/html/body'],
		'num': 'test_infrastructure_043',
		'cla': 'infrastructure'
	},
	{
		'path': '/infrastructure/reftest/reftest_ref_timeout.html',
		'arr': ['/html/body'],
		'num': 'test_infrastructure_044',
		'cla': 'infrastructure'
	},
	{
		'path': '/infrastructure/reftest/reftest_timeout.html',
		'arr': ['/html/body'],
		'num': 'test_infrastructure_045',
		'cla': 'infrastructure'
	},
	{
		'path': '/infrastructure/reftest/reftest_wait_0.html',
		'arr': ['/html/body'],
		'num': 'test_infrastructure_046',
		'cla': 'infrastructure'
	},
	{
		'path': '/infrastructure/reftest/reftest_wait_TestRendered.html',
		'arr': ['/html/body'],
		'num': 'test_infrastructure_047',
		'cla': 'infrastructure'
	},
	{
		'path': '/infrastructure/reftest/size.html',
		'arr': ['//*[@id="size"]', '/html/body/p'],
		'num': 'test_infrastructure_048',
		'cla': 'infrastructure'
	},
	{
		'path': '/infrastructure/reftest-wait.html',
		'arr': ['/html/body/div[1]'],
		'num': 'test_infrastructure_049',
		'cla': 'infrastructure'
	},
	{
		'path': '/lifecycle/set-composited-layer-position.html',
		'arr': ['//*[@id="tomove"]', '//*[@id="box"]'],
		'num': 'test_lifecycle_001',
		'cla': 'lifecycle'
	},
	{
		'path': '/mathml/presentation-markup/direction/direction-006.html',
		'arr': ['/html/body/p[2]'],
		'num': 'test_mathml_001',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/presentation-markup/direction/direction-007.html',
		'arr': ['/html/body/p[3]'],
		'num': 'test_mathml_002',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/presentation-markup/direction/direction-008.html',
		'arr': ['/html/body/p'],
		'num': 'test_mathml_003',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/presentation-markup/direction/direction-010.html',
		'arr': ['/html/body/p[3]'],
		'num': 'test_mathml_004',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/presentation-markup/direction/direction-overall.html',
		'arr': ['/html/body/p[3]'],
		'num': 'test_mathml_005',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/presentation-markup/direction/direction-token.html',
		'arr': ['/html/body/p[5]'],
		'num': 'test_mathml_006',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/presentation-markup/fractions/frac-bar-001.html',
		'arr': ['//*[@id="container"]'],
		'num': 'test_mathml_007',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/presentation-markup/fractions/frac-bar-002.html',
		'arr': ['//*[@id="container"]', '//*[@id="green"]'],
		'num': 'test_mathml_008',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/presentation-markup/fractions/frac-bar-003.html',
		'arr': ['//*[@id="container"]'],
		'num': 'test_mathml_009',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/presentation-markup/fractions/frac-color-001.html',
		'arr': ['/html/body/p'],
		'num': 'test_mathml_010',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/presentation-markup/fractions/frac-color-002.html',
		'arr': ['/html/body/div[2]'],
		'num': 'test_mathml_011',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/presentation-markup/fractions/frac-created-dynamically-2.html',
		'arr': ['/html/body/div', '/html/body/p'],
		'num': 'test_mathml_012',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/presentation-markup/fractions/frac-created-dynamically-3.html',
		'arr': ['/html/body/div', '/html/body/p'],
		'num': 'test_mathml_013',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/presentation-markup/fractions/frac-created-dynamically.html',
		'arr': ['/html/body/p'],
		'num': 'test_mathml_014',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/presentation-markup/fractions/frac-default-padding.html',
		'arr': ['/html/body/div[2]', '/html/body/div'],
		'num': 'test_mathml_015',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/presentation-markup/fractions/frac-invalid-2.html',
		'arr': ['/html/body/p'],
		'num': 'test_mathml_016',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/presentation-markup/fractions/frac-invalid-3.html',
		'arr': ['/html/body/p'],
		'num': 'test_mathml_017',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/presentation-markup/fractions/frac-invalid.html',
		'arr': ['/html/body/p'],
		'num': 'test_mathml_018',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/presentation-markup/fractions/frac-legacy-bevelled-attribute.tentative.html',
		'arr': ['/html/body/div[2]', '/html/body/p[2]'],
		'num': 'test_mathml_019',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/presentation-markup/fractions/frac-linethickness-001.html',
		'arr': ['/html/body/div', '/html/body/p'],
		'num': 'test_mathml_020',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/presentation-markup/fractions/frac-linethickness-003.html',
		'arr': ['/html/body/p'],
		'num': 'test_mathml_021',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/presentation-markup/fractions/frac-linethickness-004.html',
		'arr': ['/html/body/div', '/html/body/p'],
		'num': 'test_mathml_022',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/presentation-markup/fractions/frac-mrow-001.html',
		'arr': ['/html/body/div', '/html/body/p'],
		'num': 'test_mathml_023',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/presentation-markup/fractions/frac-numalign-denomalign-001.html',
		'arr': ['/html/body/p[3]'],
		'num': 'test_mathml_024',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/presentation-markup/fractions/frac-parameters-gap-001.html',
		'arr': ['//*[@id="frame"]'],
		'num': 'test_mathml_025',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/presentation-markup/fractions/frac-parameters-gap-002.html',
		'arr': ['//*[@id="frame"]'],
		'num': 'test_mathml_026',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/presentation-markup/fractions/frac-parameters-gap-003.html',
		'arr': ['//*[@id="frame"]'],
		'num': 'test_mathml_027',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/presentation-markup/fractions/frac-parameters-gap-004.html',
		'arr': ['//*[@id="frame"]'],
		'num': 'test_mathml_028',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/presentation-markup/fractions/frac-parameters-gap-005.html',
		'arr': ['//*[@id="frame"]'],
		'num': 'test_mathml_029',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/presentation-markup/fractions/frac-parameters-gap-006.html',
		'arr': ['//*[@id="frame"]'],
		'num': 'test_mathml_030',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/presentation-markup/fractions/frac-rendering-from-in-flow.html',
		'arr': ['/html/body/div', '/html/body'],
		'num': 'test_mathml_031',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/presentation-markup/fractions/frac-visibility-001.html',
		'arr': ['/html/body/div'],
		'num': 'test_mathml_032',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/presentation-markup/menclose/legacy-menclose-radical-notation.html',
		'arr': ['/html/body/div', '/html/body'],
		'num': 'test_mathml_033',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/presentation-markup/mpadded/mpadded-percentage-001.html',
		'arr': ['/html/body/p'],
		'num': 'test_mathml_034',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/presentation-markup/mrow/dynamic-mrow-like-001.html',
		'arr': ['/html/body/ol/li[20]'],
		'num': 'test_mathml_035',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/presentation-markup/mrow/legacy-mfenced-element-001.html',
		'arr': ['/html/body/div', '/html/body/p[2]'],
		'num': 'test_mathml_036',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/presentation-markup/mrow/legacy-mrow-like-elements-002.html',
		'arr': ['/html/body/div', '/html/body/p[5]'],
		'num': 'test_mathml_037',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/presentation-markup/mrow/mrow-painting-order.html',
		'arr': ['/html/body/div', '/html/body/div[6]'],
		'num': 'test_mathml_038',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/presentation-markup/operators/embellished-operator-dynamic-001.html',
		'arr': ['/html/body/div', '/html/body/p[4]'],
		'num': 'test_mathml_039',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/presentation-markup/operators/mo-form-dynamic-002.html',
		'arr': ['/html/body/p[6]'],
		'num': 'test_mathml_040',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/presentation-markup/operators/mo-form-dynamic.html',
		'arr': ['/html/body/div', '/html/body/p'],
		'num': 'test_mathml_041',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/presentation-markup/operators/mo-form-fallback.html',
		'arr': ['/html/body/div', '/html/body'],
		'num': 'test_mathml_042',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/presentation-markup/operators/mo-form-minus-plus.html',
		'arr': ['/html/body/div', '/html/body'],
		'num': 'test_mathml_043',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/presentation-markup/operators/mo-form.html',
		'arr': ['/html/body/div', '/html/body'],
		'num': 'test_mathml_044',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/presentation-markup/operators/mo-lspace-rspace-2.html',
		'arr': ['/html/body/p[14]'],
		'num': 'test_mathml_045',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/presentation-markup/operators/mo-lspace-rspace-3.html',
		'arr': ['/html/body/p[6]'],
		'num': 'test_mathml_046',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/presentation-markup/operators/mo-lspace-rspace-4.html',
		'arr': ['/html/body/p'],
		'num': 'test_mathml_047',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/presentation-markup/operators/mo-lspace-rspace-dynamic.html',
		'arr': ['/html/body/p[6]'],
		'num': 'test_mathml_048',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/presentation-markup/operators/mo-lspace-rspace.html',
		'arr': ['/html/body/p[3]'],
		'num': 'test_mathml_049',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/presentation-markup/operators/mo-movablelimits-and-embellished-operator.html',
		'arr': ['/html/body/div', '/html/body'],
		'num': 'test_mathml_050',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/presentation-markup/operators/mo-movablelimits-default.html',
		'arr': ['/html/body/div', '/html/body'],
		'num': 'test_mathml_051',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/presentation-markup/operators/mo-movablelimits-dynamic.html',
		'arr': ['/html/body/div', '/html/body'],
		'num': 'test_mathml_052',
		'cla': 'mathml'
	 },
	{
		'path': '/mathml/presentation-markup/operators/mo-movablelimits-from-in-flow.html',
		'arr': ['/html/body', '/html/body'],
		'num': 'test_mathml_053',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/presentation-markup/operators/mo-movablelimits.html',
		'arr': ['/html/body/div', '/html/body'],
		'num': 'test_mathml_054',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/presentation-markup/operators/mo-not-in-dictionary-lspace-rspace.html',
		'arr': ['/html/body/p[4]'],
		'num': 'test_mathml_055',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/presentation-markup/operators/mo-not-in-dictionary-movablelimits.html',
		'arr': ['/html/body/p[4]'],
		'num': 'test_mathml_056',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/presentation-markup/operators/mo-paint-lspace-rspace.html',
		'arr': ['/html/body/div', '/html/body/p[6]'],
		'num': 'test_mathml_057',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/presentation-markup/operators/mo-single-char-and-children.html',
		'arr': ['/html/body/p[13]'],
		'num': 'test_mathml_058',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/presentation-markup/operators/op-dict-1.html',
		'arr': ['/html/body'],
		'num': 'test_mathml_059',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/presentation-markup/operators/op-dict-12.html',
		'arr': ['/html/body'],
		'num': 'test_mathml_060',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/presentation-markup/operators/op-dict-13.html',
		'arr': ['/html/body'],
		'num': 'test_mathml_061',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/presentation-markup/operators/op-dict-2.html',
		'arr': ['/html/body'],
		'num': 'test_mathml_062',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/presentation-markup/operators/op-dict-3.html',
		'arr': ['/html/body'],
		'num': 'test_mathml_063',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/presentation-markup/operators/op-dict-4.html',
		'arr': ['/html/body'],
		'num': 'test_mathml_064',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/presentation-markup/operators/op-dict-5.html',
		'arr': ['/html/body'],
		'num': 'test_mathml_065',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/presentation-markup/operators/op-dict-6.html',
		'arr': ['/html/body'],
		'num': 'test_mathml_066',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/presentation-markup/operators/op-dict-7.html',
		'arr': ['/html/body'],
		'num': 'test_mathml_067',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/presentation-markup/operators/op-dict-8.html',
		'arr': ['/html/body'],
		'num': 'test_mathml_068',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/presentation-markup/operators/op-dict-9.html',
		'arr': ['/html/body'],
		'num': 'test_mathml_069',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/presentation-markup/operators/operator-dictionary-arabic-001.html',
		'arr': ['/html/body/div', '/html/body/p[3]'],
		'num': 'test_mathml_070',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/presentation-markup/operators/operator-dictionary-arabic-002.html',
		'arr': ['/html/body/p[3]'],
		'num': 'test_mathml_071',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/presentation-markup/operators/operator-dictionary-empty-and-three-chars.html',
		'arr': ['/html/body/p[8]'],
		'num': 'test_mathml_072',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/presentation-markup/operators/painting-stretchy-operator-001.html',
		'arr': ['/html/body/div[3]', '/html/body/div'],
		'num': 'test_mathml_073',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/presentation-markup/radicals/dynamic-radical-paint-invalidation-001.html',
		'arr': ['//*[@id="container"]/div[10]'],
		'num': 'test_mathml_074',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/presentation-markup/radicals/radical-rendering-from-in-flow.html',
		'arr': ['/html/body'],
		'num': 'test_mathml_075',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/presentation-markup/scripts/mover-accent-dynamic-change.html',
		'arr': ['/html/body/p', '/html/body'],
		'num': 'test_mathml_076',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/presentation-markup/scripts/mprescripts-001.html',
		'arr': ['/html/body'],
		'num': 'test_mathml_077',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/presentation-markup/scripts/none-001.html',
		'arr': ['/html/body'],
		'num': 'test_mathml_078',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/presentation-markup/scripts/none-002.html',
		'arr': ['/html/body/p[4]'],
		'num': 'test_mathml_079',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/presentation-markup/scripts/subsup-legacy-scriptshift-attributes-001.tentative.html',
		'arr': ['/html/body/p[2]'],
		'num': 'test_mathml_080',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/presentation-markup/scripts/underover-legacy-align-attribute-001.html',
		'arr': ['/html/body/p[7]'],
		'num': 'test_mathml_081',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/presentation-markup/scripts/underover-stretchy-001.html',
		'arr': ['/html/body/div[3]', '/html/body/div/div[11]/div'],
		'num': 'test_mathml_082',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/presentation-markup/scripts/underover-stretchy-002.html',
		'arr': ['/html/body/div/div[11]/div[2]', '/html/body/div/div[11]/div'],
		'num': 'test_mathml_083',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/presentation-markup/scripts/underover-stretchy-003.html',
		'arr': ['/html/body/div/div[11]/div[2]', '/html/body/div/div[11]/div'],
		'num': 'test_mathml_084',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/presentation-markup/spaces/mspace-children.html',
		'arr': ['/html/body'],
		'num': 'test_mathml_085',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/presentation-markup/spaces/mspace-percentage-001.html',
		'arr': ['/html/body'],
		'num': 'test_mathml_086',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/presentation-markup/spaces/space-2.html',
		'arr': ['/html/body/div/div[2]', '/html/body/div/div'],
		'num': 'test_mathml_087',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/presentation-markup/spaces/space-vertical-align.tentative.html',
		'arr': ['/html/body/div/div'],
		'num': 'test_mathml_088',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/presentation-markup/tokens/dynamic-mtext-like-001.html',
		'arr': ['/html/body/ol/li[22]'],
		'num': 'test_mathml_089',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/presentation-markup/tokens/ms-001.html',
		'arr': ['/html/body/p'],
		'num': 'test_mathml_090',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/relations/css-styling/blur-filter.html',
		'arr': ['/html/body/div[2]'],
		'num': 'test_mathml_091',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/relations/css-styling/clip-path.html',
		'arr': ['/html/body/div[2]'],
		'num': 'test_mathml_092',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/relations/css-styling/clip.html',
		'arr': ['/html/body/div[2]'],
		'num': 'test_mathml_093',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/relations/css-styling/color-001.html',
		'arr': ['/html/body/div'],
		'num': 'test_mathml_094',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/relations/css-styling/color-002.html',
		'arr': ['/html/body/div'],
		'num': 'test_mathml_095',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/relations/css-styling/color-003.html',
		'arr': ['/html/body/div'],
		'num': 'test_mathml_096',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/relations/css-styling/color-004.tentative.html',
		'arr': ['/html/body/div'],
		'num': 'test_mathml_097',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/relations/css-styling/color-005.html',
		'arr': ['/html/body/div[2]', '/html/body/div'],
		'num': 'test_mathml_098',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/relations/css-styling/display-1.html',
		'arr': ['/html/body/div'],
		'num': 'test_mathml_099',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/relations/css-styling/display-with-overflow.html',
		'arr': ['/html/body', '/html/body/div[2]'],
		'num': 'test_mathml_100',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/relations/css-styling/displaystyle-011.html',
		'arr': ['/html/body/div', '/html/body'],
		'num': 'test_mathml_101',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/relations/css-styling/displaystyle-012.html',
		'arr': ['/html/body/div', '/html/body'],
		'num': 'test_mathml_102',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/relations/css-styling/displaystyle-013.html',
		'arr': ['/html/body/div', '/html/body'],
		'num': 'test_mathml_103',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/relations/css-styling/displaystyle-014.html',
		'arr': ['/html/body/div', '/html/body'],
		'num': 'test_mathml_104',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/relations/css-styling/displaystyle-015.html',
		'arr': ['/html/body/div', '/html/body'],
		'num': 'test_mathml_105',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/relations/css-styling/dynamic-dir-1.html',
		'arr': ['/html/body/p[3]'],
		'num': 'test_mathml_106',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/relations/css-styling/floats/floating-inside-mathml-with-block-display.html',
		'arr': ['/html/body/div', '/html/body/div/div/div[2]'],
		'num': 'test_mathml_107',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/relations/css-styling/floats/floating-math.html',
		'arr': ['/html/body/div[2]', '/html/body/div/div[2]/div'],
		'num': 'test_mathml_108',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/relations/css-styling/legacy-scriptminsize-attribute.html',
		'arr': ['/html/body/div'],
		'num': 'test_mathml_109',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/relations/css-styling/legacy-scriptsizemultiplier-attribute.html',
		'arr': ['/html/body/div'],
		'num': 'test_mathml_110',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/relations/css-styling/lengths-1.html',
		'arr': ['//*[@id="green"]', '//*[@id="red"]'],
		'num': 'test_mathml_111',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/relations/css-styling/mathbackground-001.html',
		'arr': ['/html/body'],
		'num': 'test_mathml_112',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/relations/css-styling/mathbackground-002.html',
		'arr': ['/html/body'],
		'num': 'test_mathml_113',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/relations/css-styling/mathbackground-003.html',
		'arr': ['/html/body'],
		'num': 'test_mathml_114',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/relations/css-styling/mathbackground-004.html',
		'arr': ['/html/body'],
		'num': 'test_mathml_115',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/relations/css-styling/mathcolor-001.html',
		'arr': ['/html/body'],
		'num': 'test_mathml_116',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/relations/css-styling/mathcolor-002.html',
		'arr': ['/html/body'],
		'num': 'test_mathml_117',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/relations/css-styling/mathcolor-003.html',
		'arr': ['/html/body'],
		'num': 'test_mathml_118',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/relations/css-styling/mathcolor-004.html',
		'arr': ['/html/body'],
		'num': 'test_mathml_119',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/relations/css-styling/mathcolor-mathbackground-css.html',
		'arr': ['/html/body/p[2]'],
		'num': 'test_mathml_120',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/relations/css-styling/mathsize-attribute-css-keywords.html',
		'arr': ['/html/body'],
		'num': 'test_mathml_121',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/relations/css-styling/mathsize-attribute-legacy-values.html',
		'arr': ['/html/body/div', '/html/body/p'],
		'num': 'test_mathml_122',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/relations/css-styling/mathsize-attribute.html',
		'arr': ['/html/body/div'],
		'num': 'test_mathml_123',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/relations/css-styling/mathvariant-auto.html',
		'arr': ['/html/body/span[112]/span'],
		'num': 'test_mathml_124',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/relations/css-styling/mathvariant-basic-transforms-with-default-font.html',
		'arr': ['/html/body/p[4]'],
		'num': 'test_mathml_125',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/relations/css-styling/mathvariant-bold-fraktur.html',
		'arr': ['/html/body/span[52]/span'],
		'num': 'test_mathml_126',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/relations/css-styling/mathvariant-bold-italic.html',
		'arr': ['/html/body/span[110]/span'],
		'num': 'test_mathml_127',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/relations/css-styling/mathvariant-bold-sans-serif.html',
		'arr': ['/html/body/span[120]/span'],
		'num': 'test_mathml_128',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/relations/css-styling/mathvariant-bold-script.html',
		'arr': ['/html/body/span[52]/span'],
		'num': 'test_mathml_129',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/relations/css-styling/mathvariant-bold.html',
		'arr': ['/html/body/span[122]/span'],
		'num': 'test_mathml_130',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/relations/css-styling/mathvariant-case-sensitivity.html',
		'arr': ['/html/body/p[17]'],
		'num': 'test_mathml_131',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/relations/css-styling/mathvariant-double-struck-font-style-font-weight.html',
		'arr': ['/html/body/p[4]'],
		'num': 'test_mathml_132',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/relations/css-styling/mathvariant-double-struck.html',
		'arr': ['/html/body/span[87]/span'],
		'num': 'test_mathml_133',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/relations/css-styling/mathvariant-font-style-font-weight.html',
		'arr': ['/html/body/p[7]'],
		'num': 'test_mathml_134',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/relations/css-styling/mathvariant-fraktur.html',
		'arr': ['/html/body/span[52]/span'],
		'num': 'test_mathml_135',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/relations/css-styling/mathvariant-initial.html',
		'arr': ['/html/body/span[20]/span'],
		'num': 'test_mathml_136',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/relations/css-styling/mathvariant-italic.html',
		'arr': ['/html/body/span[112]/span'],
		'num': 'test_mathml_137',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/relations/css-styling/mathvariant-looped.html',
		'arr': ['/html/body/span[27]/span'],
		'num': 'test_mathml_138',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/relations/css-styling/mathvariant-monospace.html',
		'arr': ['/html/body/span[62]/span'],
		'num': 'test_mathml_139',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/relations/css-styling/mathvariant-sans-serif-bold-italic.html',
		'arr': ['/html/body/span[110]/span'],
		'num': 'test_mathml_140',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/relations/css-styling/mathvariant-sans-serif-italic.html',
		'arr': ['/html/body/span[52]/span'],
		'num': 'test_mathml_141',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/relations/css-styling/mathvariant-sans-serif.html',
		'arr': ['/html/body/span[62]/span'],
		'num': 'test_mathml_142',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/relations/css-styling/mathvariant-script.html',
		'arr': ['/html/body/span[52]/span'],
		'num': 'test_mathml_143',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/relations/css-styling/mathvariant-stretched.html',
		'arr': ['/html/body/span[23]/span'],
		'num': 'test_mathml_144',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/relations/css-styling/mathvariant-tailed.html',
		'arr': ['/html/body/span[15]/span'],
		'num': 'test_mathml_145',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/relations/css-styling/mi-fontstyle-fontweight.html',
		'arr': ['/html/body/p[3]'],
		'num': 'test_mathml_146',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/relations/css-styling/out-of-flow/absolutely-positioned-001.html',
		'arr': ['/html/body/div'],
		'num': 'test_mathml_147',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/relations/css-styling/out-of-flow/fixed-positioned-001.html',
		'arr': ['/html/body/div'],
		'num': 'test_mathml_148',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/relations/css-styling/padding-border-margin/padding-border-margin-001.html',
		'arr': ['/html/body/div', '/html/body/div/div/div'],
		'num': 'test_mathml_149',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/relations/css-styling/padding-border-margin/padding-border-margin-002.html',
		'arr': ['/html/body/div', '/html/body/div/div/div'],
		'num': 'test_mathml_150',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/relations/css-styling/padding-border-margin/padding-border-margin-003.html',
		'arr': ['/html/body/div', '/html/body/div/div/div'],
		'num': 'test_mathml_151',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/relations/css-styling/presentational-hints-001.html',
		'arr': ['/html/body/p[7]'],
		'num': 'test_mathml_152',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/relations/css-styling/presentational-hints-002.html',
		'arr': ['/html/body/p[7]'],
		'num': 'test_mathml_153',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/relations/css-styling/transform.html',
		'arr': ['/html/body/div[2]'],
		'num': 'test_mathml_154',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/relations/css-styling/visibility-001.html',
		'arr': ['/html/body/div'],
		'num': 'test_mathml_155',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/relations/css-styling/visibility-002.html',
		'arr': ['/html/body/div'],
		'num': 'test_mathml_156',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/relations/css-styling/visibility-003.html',
		'arr': ['/html/body/div'],
		'num': 'test_mathml_157',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/relations/css-styling/visibility-004.tentative.html',
		'arr': ['/html/body/div'],
		'num': 'test_mathml_158',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/relations/css-styling/visibility-005.html',
		'arr': ['/html/body/div'],
		'num': 'test_mathml_159',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/relations/css-styling/width-height-002.html',
		'arr': ['/html/body/div[7]'],
		'num': 'test_mathml_160',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/relations/css-styling/width-height-003.html',
		'arr': ['/html/body/div[7]'],
		'num': 'test_mathml_161',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/relations/css-styling/writing-mode/reset-and-logicial-property.html',
		'arr': ['/html/body'],
		'num': 'test_mathml_162',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/relations/html5-tree/class-1.html',
		'arr': ['/html/body'],
		'num': 'test_mathml_163',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/relations/html5-tree/color-attributes-1.html',
		'arr': ['//*[@id="content"]/div[2]', '//*[@id="content"]/div'],
		'num': 'test_mathml_164',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/relations/html5-tree/css-inline-style-dynamic.tentative.html',
		'arr': ['/html/body/div[2]', '/html/body/div'],
		'num': 'test_mathml_165',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/relations/html5-tree/display-2.html',
		'arr': ['/html/body/p[5]'],
		'num': 'test_mathml_166',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/relations/html5-tree/dynamic-1.html',
		'arr': ['/html/body'],
		'num': 'test_mathml_167',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/relations/html5-tree/dynamic-2.html',
		'arr': ['/html/body/p'],
		'num': 'test_mathml_168',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/relations/html5-tree/href-click-1.html',
		'arr': ['/html/body/div/div', '/html/body/div'],
		'num': 'test_mathml_169',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/relations/html5-tree/href-click-2.html',
		'arr': ['/html/body/div'],
		'num': 'test_mathml_170',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/relations/html5-tree/integration-point-1.html',
		'arr': ['/html/body/div/div[2]', '/html/body/div/div'],
		'num': 'test_mathml_171',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/relations/html5-tree/integration-point-2.html',
		'arr': ['/html/body/div/div[2]/q', '/html/body/div/div'],
		'num': 'test_mathml_172',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/relations/html5-tree/integration-point-3.html',
		'arr': ['/html/body/div/div[2]', '/html/body/div/div'],
		'num': 'test_mathml_173',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/relations/html5-tree/required-extensions-2.html',
		'arr': ['/html/body'],
		'num': 'test_mathml_174',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/relations/html5-tree/unique-identifier-1.html',
		'arr': ['/html/body/iframe'],
		'num': 'test_mathml_175',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/relations/html5-tree/unique-identifier-3.html',
		'arr': ['/html/body/p'],
		'num': 'test_mathml_176',
		'cla': 'mathml'
	},
	{
		'path': '/mathml/relations/text-and-math/use-typo-metrics-1.html',
		'arr': ['/html/body/div/div[4]/span', '//*[@id="green"]'],
		'num': 'test_mathml_177',
		'cla': 'mathml'
	},
	{
		'path': '/permissions-policy/experimental-features/vertical-scroll-disabled-scrollbar-tentative.html',
		'arr': ['/html/body/iframe'],
		'num': 'test_permissions_policy_001',
		'cla': 'permissions'
	},
	{
		'path': '/portals/portals-rendering.html',
		'arr': ['/html/body', '/html/body/div'],
		'num': 'test_portals_001',
		'cla': 'portals'
	},
	{
		'path': '/preload/preload-in-data-doc.html',
		'arr': ['/html', '/html/body/iframe'],
		'num': 'test_preload_001',
		'cla': 'preload'
	},
	{
		'path': '/quirks/body-fills-html-quirk-float.html',
		'arr': ['/html/body/span', '/html/body/div'],
		'num': 'test_quirks_001',
		'cla': 'quirks'
	},
	{
		'path': '/quirks/body-fills-html-quirk-inline.html',
		'arr': ['/html/body/span', '/html/body/div'],
		'num': 'test_quirks_002',
		'cla': 'quirks'
	},
	{
		'path': '/quirks/body-fills-html-quirk-positioned.html',
		'arr': ['/html/body/span', '/html/body/div'],
		'num': 'test_quirks_003',
		'cla': 'quirks'
	},
	{
		'path': '/quirks/body-fills-html-quirk-vertical.html',
		'arr': ['/html/body', '/html/body/div'],
		'num': 'test_quirks_004',
		'cla': 'quirks'
	},
	{
		'path': '/quirks/body-fills-html-quirk.html',
		'arr': ['/html/body', '/html/body/div'],
		'num': 'test_quirks_005',
		'cla': 'quirks'
	},
	{
		'path': '/quirks/dd-dl-firefox-001.html',
		'arr': ['/html/body/dd[2]'],
		'num': 'test_quirks_006',
		'cla': 'quirks'
	},
	{
		'path': '/quirks/historical/list-item-bullet-size.html',
		'arr': ['//*[@id="test"]'],
		'num': 'test_quirks_007',
		'cla': 'quirks'
	},
	{
		'path': '/quirks/historical/vertical-align-in-quirks.html',
		'arr': ['/html/body/div[8]/img'],
		'num': 'test_quirks_008',
		'cla': 'quirks'
	},
	{
		'path': '/quirks/html-fills-viewport-quirk-vertical.html',
		'arr': ['/html/body/span', '//*[@id="border"]/div'],
		'num': 'test_quirks_009',
		'cla': 'quirks'
	},
	{
		'path': '/quirks/html-fills-viewport-quirk.html',
		'arr': ['/html/body/span', '//*[@id="border"]/div'],
		'num': 'test_quirks_010',
		'cla': 'quirks'
	},
	{
		'path': '/quirks/line-height-in-list-item.tentative.html',
		'arr': ['/html/body/div/li', '/html/body/div'],
		'num': 'test_quirks_011',
		'cla': 'quirks'
	},
	{
		'path': '/quirks/line-height-limited-quirks-mode.html',
		'arr': ['/html/body/div/span'],
		'num': 'test_quirks_012',
		'cla': 'quirks'
	},
	{
		'path': '/quirks/line-height-quirks-mode.html',
		'arr': ['/html/body/div/span'],
		'num': 'test_quirks_013',
		'cla': 'quirks'
	},
	{
		'path': '/quirks/line-height-trailing-collapsable-whitespace.html',
		'arr': ['/html/body/div/div[2]', '/html/body/div'],
		'num': 'test_quirks_014',
		'cla': 'quirks'
	},
	{
		'path': '/quirks/percentage-height-quirk-excludes-flex-grid-001.html',
		'arr': ['/html/body/div[3]/div/div/div[2]'],
		'num': 'test_quirks_015',
		'cla': 'quirks'
	},
	{
		'path': '/quirks/percentage-height-quirk-excludes-flex-grid-002.html',
		'arr': ['/html/body/div[3]/div/div', '/html/body/div[3]/div'],
		'num': 'test_quirks_016',
		'cla': 'quirks'
	},
	{
		'path': '/quirks/reference/percentage-height-quirk-excludes-flex-grid-002-ref.html',
		'arr': ['/html/body/div[3]/div', '/html/body/div[3]/div/div'],
		'num': 'test_quirks_017',
		'cla': 'quirks'
	},
	{
		'path': '/quirks/table-cell-width-calculation-abspos.html',
		'arr': ['//*[@id="img"]'],
		'num': 'test_quirks_018',
		'cla': 'quirks'
	},
	{
		'path': '/quirks/text-decoration-doesnt-propagate-into-tables/quirks.html',
		'arr': ['/html/body/div[4]/u/span/span/span/span', '/html/body/div[4]/span/span/span/span/u'],
		'num': 'test_quirks_019',
		'cla': 'quirks'
	},
	{
		'path': '/quirks/text-decoration-doesnt-propagate-into-tables/standards.html',
		'arr': ['/html/body/div[4]/u/span/span/span/span', '/html/body/div[4]/span/span/span/span/u'],
		'num': 'test_quirks_020',
		'cla': 'quirks'
	},
	{
		'path': '/resize-observer/devicepixel.html',
		'arr': ['//*[@id="canvas2DPadding14"]', '/html/body/div[2]/div'],
		'num': 'test_resize_observer_001',
		'cla': 'resize'
	},
	{
		'path': '/resize-observer/devicepixel2.html',
		'arr': ['/html/body/div', '/html/body'],
		'num': 'test_resize_observer_002',
		'cla': 'resize'
	},
	{
		'path': '/resize-observer/iframe-same-origin.html',
		'arr': ['//*[@id="container"]', '/html/body/iframe'],
		'num': 'test_resize_observer_003',
		'cla': 'resize'
	},
	{
		'path': '/scroll-animations/css/scroll-timeline-default-iframe.html',
		'arr': ['//*[@id="target"]', '/html/body/iframe'],
		'num': 'test_scroll_animations_001',
		'cla': 'scroll'
	},
	{
		'path': '/scroll-animations/css/scroll-timeline-default-quirks-mode.html',
		'arr': ['//*[@id="covered"]', '//*[@id="box"]'],
		'num': 'test_scroll_animations_002',
		'cla': 'scroll'
	},
	{
		'path': '/scroll-animations/css/scroll-timeline-default-writing-mode-rl.html',
		'arr': ['//*[@id="covered"]', '//*[@id="box"]'],
		'num': 'test_scroll_animations_003',
		'cla': 'scroll'
	},
	{
		'path': '/scroll-animations/css/scroll-timeline-default.html',
		'arr': ['//*[@id="covered"]', '//*[@id="box"]'],
		'num': 'test_scroll_animations_004',
		'cla': 'scroll'
	},
	{
		'path': '/scroll-animations/css/scroll-timeline-frame-size-changed.html',
		'arr': ['//*[@id="covered"]', '//*[@id="box"]'],
		'num': 'test_scroll_animations_005',
		'cla': 'scroll'
	},
	{
		'path': '/scroll-animations/css/scroll-timeline-inline-orientation.html',
		'arr': ['//*[@id="covered"]', '//*[@id="box"]'],
		'num': 'test_scroll_animations_006',
		'cla': 'scroll'
	},
	{
		'path': '/scroll-animations/scroll-timelines/animation-with-animatable-interface.html',
		'arr': ['//*[@id="scroller"]'],
		'num': 'test_scroll_animations_007',
		'cla': 'scroll'
	},
	{
		'path': '/scroll-animations/scroll-timelines/animation-with-display-none.html',
		'arr': ['//*[@id="covered"]', '//*[@id="scroller"]'],
		'num': 'test_scroll_animations_008',
		'cla': 'scroll'
	},
	{
		'path': '/scroll-animations/scroll-timelines/animation-with-overflow-hidden.html',
		'arr': ['//*[@id="scroller"]'],
		'num': 'test_scroll_animations_009',
		'cla': 'scroll'
	},
	{
		'path': '/scroll-animations/scroll-timelines/animation-with-root-scroller.html',
		'arr': ['//*[@id="covered"]'],
		'num': 'test_scroll_animations_010',
		'cla': 'scroll'
	},
	{
		'path': '/scroll-animations/scroll-timelines/animation-with-transform.html',
		'arr': ['//*[@id="scroller"]'],
		'num': 'test_scroll_animations_011',
		'cla': 'scroll'
	},
	{
		'path': '/scroll-animations/scroll-timelines/layout-changes-on-percentage-based-timeline.html',
		'arr': ['//*[@id="scroller"]'],
		'num': 'test_scroll_animations_012',
		'cla': 'scroll'
	},
	{
		'path': '/scroll-animations/scroll-timelines/progress-based-effect-delay.tentative.html',
		'arr': ['//*[@id="scroller"]'],
		'num': 'test_scroll_animations_013',
		'cla': 'scroll'
	},
	{
		'path': '/scroll-animations/scroll-timelines/set-current-time-before-play.html',
		'arr': ['//*[@id="scroller"]'],
		'num': 'test_scroll_animations_014',
		'cla': 'scroll'
	},
	{
		'path': '/scroll-animations/scroll-timelines/two-animations-attach-to-same-scroll-timeline-cancel-one.html',
		'arr': ['//*[@id="scroller"]'],
		'num': 'test_scroll_animations_015',
		'cla': 'scroll'
	},
	{
		'path': '/scroll-animations/scroll-timelines/two-animations-attach-to-same-scroll-timeline.html',
		'arr': ['//*[@id="scroller"]'],
		'num': 'test_scroll_animations_016',
		'cla': 'scroll'
	},
	{
		'path': '/selection/caret/collapse-pre-linestart-1.html',
		'arr': ['//*[@id="target"]'],
		'num': 'test_selection_001',
		'cla': 'selection'
	},
	{
		'path': '/selection/caret/collapse-pre-linestart-2.html',
		'arr': ['//*[@id="target"]'],
		'num': 'test_selection_002',
		'cla': 'selection'
	},
	{
		'path': '/service-workers/service-worker/svg-target-reftest.https.html',
		'arr': ['*'],
		'num': 'test_service_workers_001',
		'cla': 'service'
	},
	{
		'path': '/shadow-dom/directionality-001.tentative.html',
		'arr': ['//*[@id="host2"]/span', '/html/body/div[3]/span'],
		'num': 'test_shadow_dom_001',
		'cla': 'shadow'
	},
	{
		'path': '/shadow-dom/directionality-002.tentative.html',
		'arr': ['/html/body/div'],
		'num': 'test_shadow_dom_002',
		'cla': 'shadow'
	},
	{
		'path': '/shadow-dom/focus/focus-pseudo-on-shadow-host-1.html',
		'arr': ['/html/body/div', '*'],
		'num': 'test_shadow_dom_003',
		'cla': 'shadow'
	},
	{
		'path': '/shadow-dom/focus/focus-pseudo-on-shadow-host-2.html',
		'arr': ['//*[@id="host"]/span', '*'],
		'num': 'test_shadow_dom_004',
		'cla': 'shadow'
	},
	{
		'path': '/shadow-dom/focus/focus-pseudo-on-shadow-host-3.html',
		'arr': ['//*[@id="host"]', '*'],
		'num': 'test_shadow_dom_005',
		'cla': 'shadow'
	},
	{
		'path': '/shadow-dom/imperative-slot-layout-invalidation-001.html',
		'arr': ['/html/body/div', '/html/body/div/span'],
		'num': 'test_shadow_dom_006',
		'cla': 'shadow'
	},
	{
		'path': '/shadow-dom/invalidate-sibling-different-slots.html',
		'arr': ['/html/body/details/summary[2]'],
		'num': 'test_shadow_dom_007',
		'cla': 'shadow'
	},
	{
		'path': '/shadow-dom/layout-slot-no-longer-assigned.html',
		'arr': ['/html/body'],
		'num': 'test_shadow_dom_008',
		'cla': 'shadow'
	},
	{
		'path': '/shadow-dom/layout-slot-no-longer-fallback.html',
		'arr': ['/html/body'],
		'num': 'test_shadow_dom_009',
		'cla': 'shadow'
	},
	{
		'path': '/shadow-dom/shadow-style-invalidation-vw-units.html',
		'arr': ['/html/body/iframe', '/html/body/div'],
		'num': 'test_shadow_dom_010',
		'cla': 'shadow'
	},
	{
		'path': '/shadow-dom/slot-fallback-content-001.html',
		'arr': ['/html/body/div/div[2]'],
		'num': 'test_shadow_dom_011',
		'cla': 'shadow'
	},
	{
		'path': '/shadow-dom/slot-fallback-content-002.html',
		'arr': ['//*[@id="host"]','/html/body/div/div[2]'],
		'num': 'test_shadow_dom_012',
		'cla': 'shadow'
	},
	{
		'path': '/shadow-dom/slot-fallback-content-003.html',
		'arr': ['/html/body/div[2]'],
		'num': 'test_shadow_dom_013',
		'cla': 'shadow'
	},
	{
		'path': '/shadow-dom/slot-fallback-content-004.html',
		'arr': ['//*[@id="host4"]', '/html/body/div[3]/div'],
		'num': 'test_shadow_dom_014',
		'cla': 'shadow'
	},
	{
		'path': '/shadow-dom/slot-fallback-content-005.html',
		'arr': ['//*[@id="host"]', '/html/body/p'],
		'num': 'test_shadow_dom_015',
		'cla': 'shadow'
	},
	{
		'path': '/shadow-dom/slot-fallback-content-006.html',
		'arr': ['/html/body/div[5]'],
		'num': 'test_shadow_dom_016',
		'cla': 'shadow'
	},
	{
		'path': '/shadow-dom/slot-fallback-content-007.html',
		'arr': ['/html/body/div/div[3]', '/html/body/div/div[4]'],
		'num': 'test_shadow_dom_017',
		'cla': 'shadow'
	},
	{
		'path': '/shadow-dom/slot-fallback-content-008.html',
		'arr': ['/html/body/div', '/html/body/div/div[1]'],
		'num': 'test_shadow_dom_018',
		'cla': 'shadow'
	},
	{
		'path': '/shadow-dom/untriaged/shadow-trees/nested-shadow-trees/nested_tree_reftest.html',
		'arr': ['/html/body/div', '/html/body/div//div//div'],
		'num': 'test_shadow_dom_019',
		'cla': 'shadow'
	},
	{
		'path': '/shadow-dom/untriaged/shadow-trees/reprojection/reprojection-001.html',
		'arr': ['//*[@id="host"]/div[1]', '//*[@id="host2"]/div[2]/div[3]'],
		'num': 'test_shadow_dom_020',
		'cla': 'shadow'
	},
	{
		'path': '/shadow-dom/untriaged/shadow-trees/shadow-root-001.html',
		'arr': ['/html/body/div'],
		'num': 'test_shadow_dom_021',
		'cla': 'shadow'
	},
	{
		'path': '/shadow-dom/untriaged/shadow-trees/shadow-root-002.html',
		'arr': ['//*[@id="host"]/div[2]', '/html/body/div[4]'],
		'num': 'test_shadow_dom_022',
		'cla': 'shadow'
	},
	{
		'path': '/shadow-dom/untriaged/styles/not-apply-in-shadow-root-001.html',
		'arr': ['//*[@id="shadow-host"]', '/html/body/div'],
		'num': 'test_shadow_dom_023',
		'cla': 'shadow'
	},
	{
		'path': '/svg/animations/use-animate-display-none-symbol.html',
		'arr': ['/html/body', '/html/body/div'],
		'num': 'test_svg_001',
		'cla': 'svg'
	},
	{
		'path': '/svg/coordinate-systems/abspos.html',
		'arr': ['//*[@id="container"]', '*'],
		'num': 'test_svg_002',
		'cla': 'svg'
	},
	{
		'path': '/svg/coordinate-systems/outer-svg-intrinsic-size-003.html',
		'arr': ['/html/body', '*'],
		'num': 'test_svg_003',
		'cla': 'svg'
	},
	{
		'path': '/svg/coordinate-systems/outer-svg-intrinsic-size-004.html',
		'arr': ['/html/body/img', '*'],
		'num': 'test_svg_004',
		'cla': 'svg'
	},
	{
		'path': '/svg/coordinate-systems/outer-svg-intrinsic-size-005.html',
		'arr': ['/html/body/img', '*'],
		'num': 'test_svg_005',
		'cla': 'svg'
	},
	{
		'path': '/svg/coordinate-systems/view-invalid-viewBox.html',
		'arr': ['/html/body/img', '/html/body/div'],
		'num': 'test_svg_006',
		'cla': 'svg'
	},
	{
		'path': '/svg/coordinate-systems/view-transform-viewBox.html',
		'arr': ['/html/body/img', '/html/body/div'],
		'num': 'test_svg_007',
		'cla': 'svg'
	},
	{
		'path': '/svg/coordinate-systems/viewBox-baseVal-change-invalid.html',
		'arr': ['/html/body', '/html/body/div'],
		'num': 'test_svg_008',
		'cla': 'svg'
	},
	{
		'path': '/svg/coordinate-systems/viewBox-change-repaint-001.html',
		'arr': ['*'],
		'num': 'test_svg_009',
		'cla': 'svg'
	},
	{
		'path': '/svg/coordinate-systems/viewBox-scaling-text-001.html',
		'arr': ['/html/body'],
		'num': 'test_svg_010',
		'cla': 'svg'
	},
	{
		'path': '/svg/embedded/image-embedding-svg-nested-svg-in-foreignobject.html',
		'arr': ['/html/body', '/html/body/div'],
		'num': 'test_svg_011',
		'cla': 'svg'
	},
	{
		'path': '/svg/embedded/image-embedding-svg-viewref-with-viewbox.svg',
		'arr': ['*'],
		'num': 'test_svg_012',
		'cla': 'svg'
	},
	{
		'path': '/svg/embedded/image-embedding-svg-with-auto-height.svg',
		'arr': [ '*'],
		'num': 'test_svg_013',
		'cla': 'svg'
	},
	{
		'path': '/svg/embedded/image-embedding-svg-with-fractional-viewbox.svg',
		'arr': ['*'],
		'num': 'test_svg_014',
		'cla': 'svg'
	},
	{
		'path': '/svg/embedded/image-embedding-svg-with-viewport-units-inline-style.svg',
		'arr': ['*'],
		'num': 'test_svg_015',
		'cla': 'svg'
	},
	{
		'path': '/svg/embedded/image-embedding-svg-with-viewport-units.svg',
		'arr': ['*'],
		'num': 'test_svg_016',
		'cla': 'svg'
	},
	{
		'path': '/svg/embedded/image-fractional-width-vertical-fidelity.svg',
		'arr': ['*'],
		'num': 'test_svg_017',
		'cla': 'svg'
	},
	{
		'path': '/svg/extensibility/foreignObject/composited-inside-object.html',
		'arr': ['/html/body', '*'],
		'num': 'test_svg_018',
		'cla': 'svg'
	},
	{
		'path': '/svg/extensibility/foreignObject/compositing-backface-visibility.html',
		'arr': ['*'],
		'num': 'test_svg_019',
		'cla': 'svg'
	},
	{
		'path': '/svg/extensibility/foreignObject/filter-repaint.html',
		'arr': ['/html/body', '*'],
		'num': 'test_svg_020',
		'cla': 'svg'
	},
	{
		'path': '/svg/extensibility/foreignObject/foreign-object-margin-collapsing.html',
		'arr': ['/html/body', '*'],
		'num': 'test_svg_021',
		'cla': 'svg'
	},
	{
		'path': '/svg/extensibility/foreignObject/foreign-object-paints-before-rect.html',
		'arr': ['/html/body', '*'],
		'num': 'test_svg_022',
		'cla': 'svg'
	},
	{
		'path': '/svg/extensibility/foreignObject/foreign-object-scale-scroll.html',
		'arr': ['/html/body', '*'],
		'num': 'test_svg_023',
		'cla': 'svg'
	},
	{
		'path': '/svg/extensibility/foreignObject/foreign-object-size.html',
		'arr': ['/html/body', '*'],
		'num': 'test_svg_024',
		'cla': 'svg'
	},
	{
		'path': '/svg/extensibility/foreignObject/foreign-object-with-position-under-clip-path.html',
		'arr': ['*'],
		'num': 'test_svg_025',
		'cla': 'svg'
	},
	{
		'path': '/svg/extensibility/foreignObject/isolation-with-html.html',
		'arr': ['/html/body', '*'],
		'num': 'test_svg_026',
		'cla': 'svg'
	},
	{
		'path': '/svg/extensibility/foreignObject/isolation-with-svg.html',
		'arr': ['/html/body', '*'],
		'num': 'test_svg_027',
		'cla': 'svg'
	},
	{
		'path': '/svg/extensibility/foreignObject/masked.html',
		'arr': ['/html/body', '*'],
		'num': 'test_svg_028',
		'cla': 'svg'
	},
	{
		'path': '/svg/extensibility/foreignObject/overlapped-positioned-and-will-change-transform-descendant.html',
		'arr': ['/html/body', '/html/body/div'],
		'num': 'test_svg_029',
		'cla': 'svg'
	},
	{
		'path': '/svg/extensibility/foreignObject/position-svg-root-in-foreign-object.html',
		'arr': ['/html/body/p'],
		'num': 'test_svg_030',
		'cla': 'svg'
	},
	{
		'path': '/svg/extensibility/foreignObject/scroll-transform-nested-stacked-children.html',
		'arr': ['/html/body', '/html/body/div'],
		'num': 'test_svg_031',
		'cla': 'svg'
	},
	{
		'path': '/svg/extensibility/foreignObject/stacking-context.html',
		'arr': ['//*[@id="top"]'],
		'num': 'test_svg_032',
		'cla': 'svg'
	},
	{
		'path': '/svg/extensibility/foreignObject/will-change-in-foreign-object-paint-order.html',
		'arr': ['/html/body', '/html/body/div'],
		'num': 'test_svg_033',
		'cla': 'svg'
	},
	{
		'path': '/svg/extensibility/foreignObject/will-change-in-transformed-foreign-object.html',
		'arr': ['//*[@id="should-be-hidden"]', '/html/body/div'],
		'num': 'test_svg_034',
		'cla': 'svg'
	},
	{
		'path': '/svg/geometry/reftests/circle-001.svg',
		'arr': ['*'],
		'num': 'test_svg_035',
		'cla': 'svg'
	},
	{
		'path': '/svg/geometry/reftests/circle-002.svg',
		'arr': ['*'],
		'num': 'test_svg_036',
		'cla': 'svg'
	},
	{
		'path': '/svg/geometry/reftests/circle-003.svg',
		'arr': ['*'],
		'num': 'test_svg_037',
		'cla': 'svg'
	},
	{
		'path': '/svg/geometry/reftests/circle-004.svg',
		'arr': ['*'],
		'num': 'test_svg_038',
		'cla': 'svg'
	},
	{
		'path': '/svg/geometry/reftests/circle-005.svg',
		'arr': ['*'],
		'num': 'test_svg_039',
		'cla': 'svg'
	},
	{
		'path': '/svg/geometry/reftests/ellipse-001.svg',
		'arr': ['*'],
		'num': 'test_svg_040',
		'cla': 'svg'
	},
	{
		'path': '/svg/geometry/reftests/ellipse-002.svg',
		'arr': ['*'],
		'num': 'test_svg_041',
		'cla': 'svg'
	},
	{
		'path': '/svg/geometry/reftests/ellipse-003.svg',
		'arr': ['*'],
		'num': 'test_svg_042',
		'cla': 'svg'
	},
	{
		'path': '/svg/geometry/reftests/ellipse-004.svg',
		'arr': ['*'],
		'num': 'test_svg_043',
		'cla': 'svg'
	},
	{
		'path': '/svg/geometry/reftests/percentage-attribute.svg',
		'arr': ['*'],
		'num': 'test_svg_044',
		'cla': 'svg'
	},
	{
		'path': '/svg/geometry/reftests/percentage.svg',
		'arr': ['*'],
		'num': 'test_svg_045',
		'cla': 'svg'
	},
	{
		'path': '/svg/geometry/reftests/rect-001.svg',
		'arr': ['*'],
		'num': 'test_svg_046',
		'cla': 'svg'
	},
	{
		'path': '/svg/geometry/reftests/rect-002.svg',
		'arr': ['*'],
		'num': 'test_svg_047',
		'cla': 'svg'
	},
	{
		'path': '/svg/geometry/reftests/rect-003.svg',
		'arr': ['*'],
		'num': 'test_svg_048',
		'cla': 'svg'
	},
	{
		'path': '/svg/geometry/reftests/rect-004.svg',
		'arr': ['*'],
		'num': 'test_svg_049',
		'cla': 'svg'
	},
	{
		'path': '/svg/layout/svg-intrinsic-size-invalidation.html',
		'arr': ['//*[@id="container"]'],
		'num': 'test_svg_050',
		'cla': 'svg'
	},
	{
		'path': '/svg/layout/svg-with-precent-dimensions-relayout.html',
		'arr': ['/html/body/span'],
		'num': 'test_svg_051',
		'cla': 'svg'
	},
	{
		'path': '/svg/linking/reftests/href-a-element-attr-change.html',
		'arr': ['/html/body'],
		'num': 'test_svg_052',
		'cla': 'svg'
	},
	{
		'path': '/svg/linking/reftests/href-feImage-element.html',
		'arr': ['/html/body'],
		'num': 'test_svg_053',
		'cla': 'svg'
	},
	{
		'path': '/svg/linking/reftests/href-filter-element.html',
		'arr': ['/html/body'],
		'num': 'test_svg_054',
		'cla': 'svg'
	},
	{
		'path': '/svg/linking/reftests/href-gradient-element.html',
		'arr': ['/html/body'],
		'num': 'test_svg_055',
		'cla': 'svg'
	},
	{
		'path': '/svg/linking/reftests/href-image-element.html',
		'arr': ['/html/body'],
		'num': 'test_svg_056',
		'cla': 'svg'
	},
	{
		'path': '/svg/linking/reftests/href-pattern-element.html',
		'arr': ['/html/body'],
		'num': 'test_svg_057',
		'cla': 'svg'
	},
	{
		'path': '/svg/linking/reftests/href-textPath-element.html',
		'arr': ['/html/body'],
		'num': 'test_svg_058',
		'cla': 'svg'
	},
	{
		'path': '/svg/linking/reftests/href-use-element.html',
		'arr': ['/html/body'],
		'num': 'test_svg_059',
		'cla': 'svg'
	},
	{
		'path': '/svg/linking/reftests/url-processing-invalid-base.svg',
		'arr': ['*'],
		'num': 'test_svg_060',
		'cla': 'svg'
	},
	{
		'path': '/svg/linking/reftests/url-processing-whitespace-001.svg',
		'arr': ['*'],
		'num': 'test_svg_061',
		'cla': 'svg'
	},
	{
		'path': '/svg/linking/reftests/url-processing-whitespace-002.svg',
		'arr': ['*'],
		'num': 'test_svg_062',
		'cla': 'svg'
	},
	{
		'path': '/svg/linking/reftests/url-processing-whitespace-003.svg',
		'arr': ['*'],
		'num': 'test_svg_063',
		'cla': 'svg'
	},
	{
		'path': '/svg/linking/reftests/url-reference-local-textpath.svg',
		'arr': ['*'],
		'num': 'test_svg_064',
		'cla': 'svg'
	},
	{
		'path': '/svg/linking/reftests/use-descendant-combinator-001.html',
		'arr': ['//html/body/p', '/html/body'],
		'num': 'test_svg_065',
		'cla': 'svg'
	},
	{
		'path': '/svg/linking/reftests/use-descendant-combinator-002.html',
		'arr': ['/html/body/p', '/html/body'],
		'num': 'test_svg_066',
		'cla': 'svg'
	},
	{
		'path': '/svg/linking/reftests/use-descendant-combinator-003.html',
		'arr': ['/html/body/p', '/html/body'],
		'num': 'test_svg_067',
		'cla': 'svg'
	},
	{
		'path': '/svg/linking/reftests/use-hidden-attr-change.html',
		'arr': ['/html/body/p'],
		'num': 'test_svg_068',
		'cla': 'svg'
	},
	{
		'path': '/svg/linking/reftests/use-keyframes.html',
		'arr': ['/html/body'],
		'num': 'test_svg_069',
		'cla': 'svg'
	},
	{
		'path': '/svg/linking/reftests/use-nested-symbol-001.html',
		'arr': ['/html/body/p'],
		'num': 'test_svg_070',
		'cla': 'svg'
	},
	{
		'path': '/svg/linking/reftests/use-symbol-rendered-001.html',
		'arr': ['/html/body/p'],
		'num': 'test_svg_071',
		'cla': 'svg'
	},
	{
		'path': '/svg/painting/currentColor-override-pserver-fallback.svg',
		'arr': ['*'],
		'num': 'test_svg_072',
		'cla': 'svg'
	},
	{
		'path': '/svg/painting/currentColor-override-pserver-fill.svg',
		'arr': ['*'],
		'num': 'test_svg_073',
		'cla': 'svg'
	},
	{
		'path': '/svg/painting/currentColor-override-pserver-stroke.svg',
		'arr': ['*'],
		'num': 'test_svg_074',
		'cla': 'svg'
	},
	{
		'path': '/svg/painting/foreignObject-overflow.html',
		'arr': ['/html/body'],
		'num': 'test_svg_075',
		'cla': 'svg'
	},
	{
		'path': '/svg/painting/marker-001.svg',
		'arr': ['*'],
		'num': 'test_svg_076',
		'cla': 'svg'
	},
	{
		'path': '/svg/painting/marker-002.svg',
		'arr': ['*'],
		'num': 'test_svg_077',
		'cla': 'svg'
	},
	{
		'path': '/svg/painting/marker-003.svg',
		'arr': ['*'],
		'num': 'test_svg_078',
		'cla': 'svg'
	},
	{
		'path': '/svg/painting/marker-004.svg',
		'arr': ['*'],
		'num': 'test_svg_079',
		'cla': 'svg'
	},
	{
		'path': '/svg/painting/marker-005.svg',
		'arr': ['*'],
		'num': 'test_svg_080',
		'cla': 'svg'
	},
	{
		'path': '/svg/painting/marker-006.svg',
		'arr': ['*'],
		'num': 'test_svg_081',
		'cla': 'svg'
	},
	{
		'path': '/svg/painting/marker-007.svg',
		'arr': ['*'],
		'num': 'test_svg_082',
		'cla': 'svg'
	},
	{
		'path': '/svg/painting/marker-008.svg',
		'arr': ['*'],
		'num': 'test_svg_083',
		'cla': 'svg'
	},
	{
		'path': '/svg/painting/marker-009.svg',
		'arr': ['*'],
		'num': 'test_svg_084',
		'cla': 'svg'
	},
	{
		'path': '/svg/painting/marker-orient-001.svg',
		'arr': ['*'],
		'num': 'test_svg_085',
		'cla': 'svg'
	},
	{
		'path': '/svg/painting/mask-containing-image-with-clip-path.svg',
		'arr': ['*'],
		'num': 'test_svg_086',
		'cla': 'svg'
	},
	{
		'path': '/svg/painting/reftests/display-none-mask.html',
		'arr': ['/html/body', '*'],
		'num': 'test_svg_087',
		'cla': 'svg'
	},
	{
		'path': '/svg/painting/reftests/fallback-001.svg',
		'arr': ['*'],
		'num': 'test_svg_088',
		'cla': 'svg'
	},
	{
		'path': '/svg/painting/reftests/fallback-002.svg',
		'arr': ['*'],
		'num': 'test_svg_089',
		'cla': 'svg'
	},
	{
		'path': '/svg/painting/reftests/marker-path-001.svg',
		'arr': ['*'],
		'num': 'test_svg_090',
		'cla': 'svg'
	},
	{
		'path': '/svg/painting/reftests/marker-path-002.svg',
		'arr': ['*'],
		'num': 'test_svg_091',
		'cla': 'svg'
	},
	{
		'path': '/svg/painting/reftests/marker-path-003.svg',
		'arr': ['*'],
		'num': 'test_svg_092',
		'cla': 'svg'
	},
	{
		'path': '/svg/painting/reftests/marker-path-011.svg',
		'arr': ['*'],
		'num': 'test_svg_093',
		'cla': 'svg'
	},
	{
		'path': '/svg/painting/reftests/marker-path-012.svg',
		'arr': ['*'],
		'num': 'test_svg_094',
		'cla': 'svg'
	},
	{
		'path': '/svg/painting/reftests/marker-path-013.svg',
		'arr': ['*'],
		'num': 'test_svg_095',
		'cla': 'svg'
	},
	{
		'path': '/svg/painting/reftests/marker-path-021.svg',
		'arr': ['*'],
		'num': 'test_svg_096',
		'cla': 'svg'
	},
	{
		'path': '/svg/painting/reftests/marker-path-022.svg',
		'arr': ['*'],
		'num': 'test_svg_097',
		'cla': 'svg'
	},
	{
		'path': '/svg/painting/reftests/marker-path-023.svg',
		'arr': ['*'],
		'num': 'test_svg_098',
		'cla': 'svg'
	},
	{
		'path': '/svg/painting/reftests/marker-units-strokewidth-non-scaling-stroke.svg',
		'arr': ['*'],
		'num': 'test_svg_099',
		'cla': 'svg'
	},
	{
		'path': '/svg/painting/reftests/marker-units-userspaceonuse-non-scaling-stroke.svg',
		'arr': ['*'],
		'num': 'test_svg_100',
		'cla': 'svg'
	},
	{
		'path': '/svg/painting/reftests/markers-orient-001.svg',
		'arr': ['*'],
		'num': 'test_svg_101',
		'cla': 'svg'
	},
	{
		'path': '/svg/painting/reftests/markers-orient-002.svg',
		'arr': ['*'],
		'num': 'test_svg_102',
		'cla': 'svg'
	},
	{
		'path': '/svg/painting/reftests/paint-context-001.svg',
		'arr': ['*'],
		'num': 'test_svg_103',
		'cla': 'svg'
	},
	{
		'path': '/svg/painting/reftests/paint-context-002.svg',
		'arr': ['*'],
		'num': 'test_svg_104',
		'cla': 'svg'
	},
	{
		'path': '/svg/painting/reftests/paint-order-001.svg',
		'arr': ['*'],
		'num': 'test_svg_105',
		'cla': 'svg'
	},
	{
		'path': '/svg/painting/reftests/percentage-attribute.svg',
		'arr': ['*'],
		'num': 'test_svg_106',
		'cla': 'svg'
	},
	{
		'path': '/svg/painting/reftests/percentage.svg',
		'arr': ['*'],
		'num': 'test_svg_107',
		'cla': 'svg'
	},
	{
		'path': '/svg/painting/subpixel-clip-path-transform.html',
		'arr': ['/html/body', '/html/body/div'],
		'num': 'test_svg_108',
		'cla': 'svg'
	},
	{
		'path': '/svg/painting/svg-child-will-change-transform-invalidation.html',
		'arr': ['/html/body', '/html/body/div'],
		'num': 'test_svg_109',
		'cla': 'svg'
	},
	{
		'path': '/svg/painting/svg-with-outline.html',
		'arr': ['/html/body'],
		'num': 'test_svg_110',
		'cla': 'svg'
	},
	{
		'path': '/svg/painting/text-clip-path-transform.html',
		'arr': ['/html/body', '/html/body/div[1]'],
		'num': 'test_svg_111',
		'cla': 'svg'
	},
	{
		'path': '/svg/painting/text-mask-transform.html',
		'arr': ['/html/body', '/html/body/div[1]'],
		'num': 'test_svg_112',
		'cla': 'svg'
	},
	{
		'path': '/svg/painting/will-change-under-mask.html',
		'arr': ['/html/body', '/html/body/div'],
		'num': 'test_svg_113',
		'cla': 'svg'
	},
	{
		'path': '/svg/path/bearing/absolute.svg',
		'arr': ['*'],
		'num': 'test_svg_114',
		'cla': 'svg'
	},
	{
		'path': '/svg/path/bearing/relative.svg',
		'arr': ['*'],
		'num': 'test_svg_115',
		'cla': 'svg'
	},
	{
		'path': '/svg/path/bearing/zero.svg',
		'arr': ['*'],
		'num': 'test_svg_116',
		'cla': 'svg'
	},
	{
		'path': '/svg/path/closepath/segment-completing.svg',
		'arr': ['*'],
		'num': 'test_svg_117',
		'cla': 'svg'
	},
	{
		'path': '/svg/path/distance/pathLength-positive-percentage.svg',
		'arr': ['*'],
		'num': 'test_svg_118',
		'cla': 'svg'
	},
	{
		'path': '/svg/path/distance/pathLength-positive.svg',
		'arr': ['*'],
		'num': 'test_svg_119',
		'cla': 'svg'
	},
	{
		'path': '/svg/path/distance/pathLength-zero-percentage.svg',
		'arr': ['*'],
		'num': 'test_svg_120',
		'cla': 'svg'
	},
	{
		'path': '/svg/path/distance/pathLength-zero.svg',
		'arr': ['*'],
		'num': 'test_svg_121',
		'cla': 'svg'
	},
	{
		'path': '/svg/path/distance/pathlength-circle-mutating.svg',
		'arr': ['*'],
		'num': 'test_svg_122',
		'cla': 'svg'
	},
	{
		'path': '/svg/path/distance/pathlength-path-mutating.svg',
		'arr': ['*'],
		'num': 'test_svg_123',
		'cla': 'svg'
	},
	{
		'path': '/svg/path/distance/pathlength-path-negative.svg',
		'arr': ['*'],
		'num': 'test_svg_124',
		'cla': 'svg'
	},
	{
		'path': '/svg/path/distance/pathlength-path-zero.svg',
		'arr': ['*'],
		'num': 'test_svg_125',
		'cla': 'svg'
	},
	{
		'path': '/svg/path/distance/pathlength-path.svg',
		'arr': ['*'],
		'num': 'test_svg_126',
		'cla': 'svg'
	},
	{
		'path': '/svg/path/distance/pathlength-rect-mutating.svg',
		'arr': ['*'],
		'num': 'test_svg_127',
		'cla': 'svg'
	},
	{
		'path': '/svg/path/distance/pathlength-rect.svg',
		'arr': ['*'],
		'num': 'test_svg_128',
		'cla': 'svg'
	},
	{
		'path': '/svg/path/error-handling/render-until-error.svg',
		'arr': ['*'],
		'num': 'test_svg_129',
		'cla': 'svg'
	},
	{
		'path': '/svg/path/property/marker-path.svg',
		'arr': ['*'],
		'num': 'test_svg_130',
		'cla': 'svg'
	},
	{
		'path': '/svg/path/property/mpath.svg',
		'arr': ['*'],
		'num': 'test_svg_131',
		'cla': 'svg'
	},
	{
		'path': '/svg/path/property/priority.svg',
		'arr': ['*'],
		'num': 'test_svg_132',
		'cla': 'svg'
	},
	{
		'path': '/svg/pservers/reftests/meshgradient-basic-001.svg',
		'arr': ['*'],
		'num': 'test_svg_133',
		'cla': 'svg'
	},
	{
		'path': '/svg/pservers/reftests/meshgradient-basic-002.svg',
		'arr': ['*'],
		'num': 'test_svg_134',
		'cla': 'svg'
	},
	{
		'path': '/svg/pservers/reftests/meshgradient-basic-003.svg',
		'arr': ['*'],
		'num': 'test_svg_135',
		'cla': 'svg'
	},
	{
		'path': '/svg/pservers/reftests/meshgradient-basic-004.svg',
		'arr': ['*'],
		'num': 'test_svg_136',
		'cla': 'svg'
	},
	{
		'path': '/svg/pservers/reftests/meshgradient-basic-005.svg',
		'arr': ['*'],
		'num': 'test_svg_137',
		'cla': 'svg'
	},
	{
		'path': '/svg/pservers/reftests/meshgradient-bicubic-001.svg',
		'arr': ['*'],
		'num': 'test_svg_138',
		'cla': 'svg'
	},
    ## 卡在ref界面无法成功
	# {
	# 	'path': '/svg/pservers/reftests/meshgradient-complex-001.svg',
	# 	'arr': ['*'],
	# 	'num': 'test_svg_139',
	# 	'cla': 'svg'
	# },
	{
		'path': '/svg/pservers/reftests/pattern-inheritance-template-pattern-removed.svg',
		'arr': ['*'],
		'num': 'test_svg_140',
		'cla': 'svg'
	},
	{
		'path': '/svg/pservers/reftests/radialgradient-basic-002.svg',
		'arr': ['*'],
		'num': 'test_svg_141',
		'cla': 'svg'
	},
	{
		'path': '/svg/pservers/reftests/radialgradient-fully-overlapping.svg',
		'arr': ['*'],
		'num': 'test_svg_142',
		'cla': 'svg'
	},
	{
		'path': '/svg/pservers/reftests/stop-color-currentcolor-dynamic-001.svg',
		'arr': ['*'],
		'num': 'test_svg_143',
		'cla': 'svg'
	},
	{
		'path': '/svg/render/reftests/blending-001.svg',
		'arr': ['*'],
		'num': 'test_svg_144',
		'cla': 'svg'
	},
	{
		'path': '/svg/render/reftests/blending-002.svg',
		'arr': ['*'],
		'num': 'test_svg_145',
		'cla': 'svg'
	},
	{
		'path': '/svg/render/reftests/blending-svg-foreign-object.html',
		'arr': ['/html/body/div/div', '/html/body/div'],
		'num': 'test_svg_146',
		'cla': 'svg'
	},
	{
		'path': '/svg/render/reftests/blending-svg-root.html',
		'arr': ['/html/body/div'],
		'num': 'test_svg_147',
		'cla': 'svg'
	},
	{
		'path': '/svg/render/reftests/change-sync-for-nested-use.html',
		'arr': ['/html/body'],
		'num': 'test_svg_148',
		'cla': 'svg'
	},
	{
		'path': '/svg/render/reftests/filter-effects-on-pattern.html',
		'arr': ['/html/body', '/html/body/div'],
		'num': 'test_svg_149',
		'cla': 'svg'
	},
	{
		'path': '/svg/render/reftests/nested-svg-overflow-clip.html',
		'arr': ['/html/body'],
		'num': 'test_svg_150',
		'cla': 'svg'
	},
	{
		'path': '/svg/render/reftests/overflow-clip.html',
		'arr': ['/html/body'],
		'num': 'test_svg_151',
		'cla': 'svg'
	},
	{
		'path': '/svg/render/reftests/render-sync-with-font-size.html',
		'arr': ['/html/body'],
		'num': 'test_svg_152',
		'cla': 'svg'
	},
	{
		'path': '/svg/rendering/order/clip-path-filter-order.svg',
		'arr': ['*'],
		'num': 'test_svg_153',
		'cla': 'svg'
	},
	{
		'path': '/svg/rendering/order/z-index.svg',
		'arr': ['*'],
		'num': 'test_svg_154',
		'cla': 'svg'
	},
	{
		'path': '/svg/scripted/script-style-attribute-csp.html',
		'arr': ['/html/body'],
		'num': 'test_svg_155',
		'cla': 'svg'
	},
	{
		'path': '/svg/shapes/circle-01.svg',
		'arr': ['*'],
		'num': 'test_svg_156',
		'cla': 'svg'
	},
	{
		'path': '/svg/shapes/ellipse-01.svg',
		'arr': ['*'],
		'num': 'test_svg_157',
		'cla': 'svg'
	},
	{
		'path': '/svg/shapes/ellipse-02.svg',
		'arr': ['*'],
		'num': 'test_svg_158',
		'cla': 'svg'
	},
	{
		'path': '/svg/shapes/ellipse-03.svg',
		'arr': ['*'],
		'num': 'test_svg_159',
		'cla': 'svg'
	},
	{
		'path': '/svg/shapes/ellipse-04.svg',
		'arr': ['*'],
		'num': 'test_svg_160',
		'cla': 'svg'
	},
	{
		'path': '/svg/shapes/ellipse-05.svg',
		'arr': ['*'],
		'num': 'test_svg_161',
		'cla': 'svg'
	},
	{
		'path': '/svg/shapes/ellipse-06.svg',
		'arr': ['*'],
		'num': 'test_svg_162',
		'cla': 'svg'
	},
	{
		'path': '/svg/shapes/ellipse-07.svg',
		'arr': ['*'],
		'num': 'test_svg_163',
		'cla': 'svg'
	},
	{
		'path': '/svg/shapes/ellipse-08.svg',
		'arr': ['*'],
		'num': 'test_svg_164',
		'cla': 'svg'
	},
	{
		'path': '/svg/shapes/ellipse-09.svg',
		'arr': ['*'],
		'num': 'test_svg_165',
		'cla': 'svg'
	},
	{
		'path': '/svg/shapes/line-dasharray.svg',
		'arr': ['*'],
		'num': 'test_svg_166',
		'cla': 'svg'
	},
	{
		'path': '/svg/shapes/rect-01.svg',
		'arr': ['*'],
		'num': 'test_svg_167',
		'cla': 'svg'
	},
	{
		'path': '/svg/shapes/rect-02.svg',
		'arr': ['*'],
		'num': 'test_svg_168',
		'cla': 'svg'
	},
	{
		'path': '/svg/shapes/rect-03.svg',
		'arr': ['*'],
		'num': 'test_svg_169',
		'cla': 'svg'
	},
	{
		'path': '/svg/shapes/rect-04.svg',
		'arr': ['*'],
		'num': 'test_svg_170',
		'cla': 'svg'
	},
	{
		'path': '/svg/shapes/rect-05.svg',
		'arr': ['*'],
		'num': 'test_svg_171',
		'cla': 'svg'
	},
	{
		'path': '/svg/shapes/reftests/disabled-shapes-01.svg',
		'arr': ['*'],
		'num': 'test_svg_172',
		'cla': 'svg'
	},
	{
		'path': '/svg/shapes/reftests/pathlength-001.svg',
		'arr': ['*'],
		'num': 'test_svg_173',
		'cla': 'svg'
	},
	{
		'path': '/svg/shapes/reftests/pathlength-002.svg',
		'arr': ['*'],
		'num': 'test_svg_174',
		'cla': 'svg'
	},
	{
		'path': '/svg/shapes/reftests/pathlength-003.svg',
		'arr': ['*'],
		'num': 'test_svg_175',
		'cla': 'svg'
	},
	{
		'path': '/svg/shapes/reftests/polygon-with-filtered-marker.html',
		'arr': ['/html/body', '/html/body/div'],
		'num': 'test_svg_176',
		'cla': 'svg'
	},
	{
		'path': '/svg/struct/reftests/currentScale-change-repaint.html',
		'arr': ['/html/body', '/html/body/div'],
		'num': 'test_svg_177',
		'cla': 'svg'
	},
	{
		'path': '/svg/struct/reftests/currentScale.svg',
		'arr': ['*'],
		'num': 'test_svg_178',
		'cla': 'svg'
	},
	{
		'path': '/svg/struct/reftests/nested-svg-through-display-contents.svg',
		'arr': ['*'],
		'num': 'test_svg_179',
		'cla': 'svg'
	},
	{
		'path': '/svg/struct/reftests/requiredextensions-empty-string.svg',
		'arr': ['*'],
		'num': 'test_svg_180',
		'cla': 'svg'
	},
	{
		'path': '/svg/struct/reftests/requiredextensions-xhtml.tentative.svg',
		'arr': ['*'],
		'num': 'test_svg_181',
		'cla': 'svg'
	},
	{
		'path': '/svg/struct/reftests/use-a.svg',
		'arr': ['*'],
		'num': 'test_svg_182',
		'cla': 'svg'
	},
	{
		'path': '/svg/struct/reftests/use-adopted-with-external-resource.tentative.svg',
		'arr': ['*'],
		'num': 'test_svg_183',
		'cla': 'svg'
	},
	{
		'path': '/svg/struct/reftests/use-cross-origin.svg',
		'arr': ['*'],
		'num': 'test_svg_184',
		'cla': 'svg'
	},
	{
		'path': '/svg/struct/reftests/use-data-url.tentative.svg',
		'arr': ['*'],
		'num': 'test_svg_185',
		'cla': 'svg'
	},
	{
		'path': '/svg/struct/reftests/use-external-resource-with-revalidation.tentative.html',
		'arr': ['/html/body', '/html/body/div'],
		'num': 'test_svg_186',
		'cla': 'svg'
	},
	{
		'path': '/svg/struct/reftests/use-inheritance-001.svg',
		'arr': ['*'],
		'num': 'test_svg_187',
		'cla': 'svg'
	},
	{
		'path': '/svg/struct/reftests/use-inheritance-nth-child-of.svg',
		'arr': ['*'],
		'num': 'test_svg_188',
		'cla': 'svg'
	},
	{
		'path': '/svg/struct/reftests/use-inheritance-nth-last-child-of.svg',
		'arr': ['*'],
		'num': 'test_svg_189',
		'cla': 'svg'
	},
	{
		'path': '/svg/struct/reftests/use-no-tspan.svg',
		'arr': ['*'],
		'num': 'test_svg_190',
		'cla': 'svg'
	},
	{
		'path': '/svg/struct/reftests/use-same-origin.svg',
		'arr': ['*'],
		'num': 'test_svg_191',
		'cla': 'svg'
	},
	{
		'path': '/svg/struct/reftests/use-svg-dimensions-override-001.svg',
		'arr': ['*'],
		'num': 'test_svg_192',
		'cla': 'svg'
	},
	{
		'path': '/svg/struct/reftests/use-svg-dimensions-override-002.svg',
		'arr': ['*'],
		'num': 'test_svg_193',
		'cla': 'svg'
	},
	{
		'path': '/svg/struct/reftests/use-switch.svg',
		'arr': ['*'],
		'num': 'test_svg_194',
		'cla': 'svg'
	},
	{
		'path': '/svg/struct/reftests/use-symbol-dimensions-override-001.svg',
		'arr': ['*'],
		'num': 'test_svg_195',
		'cla': 'svg'
	},
	{
		'path': '/svg/struct/reftests/use-symbol-dimensions-override-002.svg',
		'arr': ['*'],
		'num': 'test_svg_196',
		'cla': 'svg'
	},
	{
		'path': '/svg/styling/invalidation/nth-child-of-class.svg',
		'arr': ['*'],
		'num': 'test_svg_197',
		'cla': 'svg'
	},
	{
		'path': '/svg/styling/invalidation/nth-last-child-of-class.svg',
		'arr': ['*'],
		'num': 'test_svg_198',
		'cla': 'svg'
	},
	{
		'path': '/svg/styling/padding-on-svg-via-img.tentative.html',
		'arr': ['/html/body/img[3]'],
		'num': 'test_svg_199',
		'cla': 'svg'
	},
	{
		'path': '/svg/styling/render/transform-box.svg',
		'arr': ['*'],
		'num': 'test_svg_200',
		'cla': 'svg'
	},
	{
		'path': '/svg/styling/render/transform-origin.svg',
		'arr': ['*'],
		'num': 'test_svg_201',
		'cla': 'svg'
	},
	{
		'path': '/svg/styling/render/transform.svg',
		'arr': ['*'],
		'num': 'test_svg_202',
		'cla': 'svg'
	},
	{
		'path': '/svg/styling/use-element-animations.html',
		'arr': ['/html/body'],
		'num': 'test_svg_203',
		'cla': 'svg'
	},
	{
		'path': '/svg/styling/use-element-transitions.html',
		'arr': ['/html/body'],
		'num': 'test_svg_204',
		'cla': 'svg'
	},
	{
		'path': '/svg/styling/use-element-web-animations.html',
		'arr': ['//*[@id="tmpl"]'],
		'num': 'test_svg_205',
		'cla': 'svg'
	},
	{
		'path': '/svg/text/reftests/dominant-baseline-hanging-small-font-size.svg',
		'arr': ['*'],
		'num': 'test_svg_206',
		'cla': 'svg'
	},
	{
		'path': '/svg/text/reftests/gradient-after-reposition.html',
		'arr': ['/html/body'],
		'num': 'test_svg_207',
		'cla': 'svg'
	},
	{
		'path': '/svg/text/reftests/lang-attribute-dynamic.svg',
		'arr': ['*'],
		'num': 'test_svg_208',
		'cla': 'svg'
	},
	{
		'path': '/svg/text/reftests/lang-attribute.svg',
		'arr': ['*'],
		'num': 'test_svg_209',
		'cla': 'svg'
	},
	{
		'path': '/svg/text/reftests/multiple-textpaths.svg',
		'arr': ['*'],
		'num': 'test_svg_210',
		'cla': 'svg'
	},
	{
		'path': '/svg/text/reftests/no-background.svg',
		'arr': ['*'],
		'num': 'test_svg_211',
		'cla': 'svg'
	},
	{
		'path': '/svg/text/reftests/no-margin-border-padding.svg',
		'arr': ['*'],
		'num': 'test_svg_212',
		'cla': 'svg'
	},
	{
		'path': '/svg/text/reftests/text-clipped-offscreen-move-onscreen.html',
		'arr': ['/html/body/div'],
		'num': 'test_svg_213',
		'cla': 'svg'
	},
	{
		'path': '/svg/text/reftests/text-complex-001.svg',
		'arr': ['*'],
		'num': 'test_svg_214',
		'cla': 'svg'
	},
	{
		'path': '/svg/text/reftests/text-complex-002.svg',
		'arr': ['*'],
		'num': 'test_svg_215',
		'cla': 'svg'
	},
	{
		'path': '/svg/text/reftests/text-inline-size-001.svg',
		'arr': ['*'],
		'num': 'test_svg_216',
		'cla': 'svg'
	},
	{
		'path': '/svg/text/reftests/text-inline-size-002.svg',
		'arr': ['*'],
		'num': 'test_svg_217',
		'cla': 'svg'
	},
	{
		'path': '/svg/text/reftests/text-inline-size-003.svg',
		'arr': ['*'],
		'num': 'test_svg_218',
		'cla': 'svg'
	},
	{
		'path': '/svg/text/reftests/text-inline-size-005.svg',
		'arr': ['*'],
		'num': 'test_svg_219',
		'cla': 'svg'
	},
	{
		'path': '/svg/text/reftests/text-inline-size-006.svg',
		'arr': ['*'],
		'num': 'test_svg_220',
		'cla': 'svg'
	},
	{
		'path': '/svg/text/reftests/text-inline-size-007.svg',
		'arr': ['*'],
		'num': 'test_svg_221',
		'cla': 'svg'
	},
	{
		'path': '/svg/text/reftests/text-inline-size-101.svg',
		'arr': ['*'],
		'num': 'test_svg_222',
		'cla': 'svg'
	},
	{
		'path': '/svg/text/reftests/text-inline-size-201.svg',
		'arr': ['*'],
		'num': 'test_svg_223',
		'cla': 'svg'
	},
	{
		'path': '/svg/text/reftests/text-multiline-001.svg',
		'arr': ['*'],
		'num': 'test_svg_224',
		'cla': 'svg'
	},
	{
		'path': '/svg/text/reftests/text-multiline-002.svg',
		'arr': ['*'],
		'num': 'test_svg_225',
		'cla': 'svg'
	},
	{
		'path': '/svg/text/reftests/text-multiline-003.svg',
		'arr': ['*'],
		'num': 'test_svg_226',
		'cla': 'svg'
	},
	{
		'path': '/svg/text/reftests/text-shape-inside-001.svg',
		'arr': ['*'],
		'num': 'test_svg_227',
		'cla': 'svg'
	},
	{
		'path': '/svg/text/reftests/text-shape-inside-002.svg',
		'arr': ['*'],
		'num': 'test_svg_228',
		'cla': 'svg'
	},
	{
		'path': '/svg/text/reftests/text-text-anchor-001.svg',
		'arr': ['*'],
		'num': 'test_svg_229',
		'cla': 'svg'
	},
	{
		'path': '/svg/text/reftests/text-text-anchor-002.svg',
		'arr': ['*'],
		'num': 'test_svg_230',
		'cla': 'svg'
	},
	{
		'path': '/svg/text/reftests/text-text-anchor-003.svg',
		'arr': ['*'],
		'num': 'test_svg_231',
		'cla': 'svg'
	},
	{
		'path': '/svg/text/reftests/text-text-anchor-102.svg',
		'arr': ['*'],
		'num': 'test_svg_232',
		'cla': 'svg'
	},
	{
		'path': '/svg/text/reftests/text-text-anchor-201.svg',
		'arr': ['*'],
		'num': 'test_svg_233',
		'cla': 'svg'
	},
	{
		'path': '/svg/text/reftests/text-text-anchor-202.svg',
		'arr': ['*'],
		'num': 'test_svg_234',
		'cla': 'svg'
	},
	{
		'path': '/svg/text/reftests/text-text-anchor-203.svg',
		'arr': ['*'],
		'num': 'test_svg_235',
		'cla': 'svg'
	},
	{
		'path': '/svg/text/reftests/text-transform-001.html',
		'arr': ['/html/body'],
		'num': 'test_svg_236',
		'cla': 'svg'
	},
	{
		'path': '/svg/text/reftests/text-transform-002.html',
		'arr': ['/html/body'],
		'num': 'test_svg_237',
		'cla': 'svg'
	},
	{
		'path': '/svg/text/reftests/text-xml-space-001.svg',
		'arr': ['*'],
		'num': 'test_svg_238',
		'cla': 'svg'
	},
	{
		'path': '/svg/text/reftests/textpath-shape-001.svg',
		'arr': ['*'],
		'num': 'test_svg_239',
		'cla': 'svg'
	},
	{
		'path': '/svg/text/reftests/textpath-side-001.svg',
		'arr': ['*'],
		'num': 'test_svg_240',
		'cla': 'svg'
	},
	{
		'path': '/svg/text/reftests/transform-dynamic-change-root.html',
		'arr': ['/html/body'],
		'num': 'test_svg_241',
		'cla': 'svg'
	},
	{
		'path': '/svg/text/reftests/transform-dynamic-change.html',
		'arr': ['/html/body/div[1]'],
		'num': 'test_svg_242',
		'cla': 'svg'
	},
	{
		'path': '/svg/text/reftests/tspan-opacity-mixed-direction.svg',
		'arr': ['*'],
		'num': 'test_svg_243',
		'cla': 'svg'
	},
	{
		'path': '/svg/text/reftests/writing-mode-dynamic-change.html',
		'arr': ['/html/body'],
		'num': 'test_svg_244',
		'cla': 'svg'
	},
	{
		'path': '/svg/text/reftests/xml-lang-attribute-dynamic.svg',
		'arr': ['*'],
		'num': 'test_svg_245',
		'cla': 'svg'
	},
	{
		'path': '/svg/text/reftests/xml-lang-attribute.svg',
		'arr': ['*'],
		'num': 'test_svg_246',
		'cla': 'svg'
	},
	{
		'path': '/web-animations/animation-model/keyframe-effects/transform-and-opacity-on-inline-001.html',
		'arr': ['//*[@id="target"]'],
		'num': 'test_web_animations_001',
		'cla': 'web'
	},
	{
		'path': '/web-animations/responsive/toggle-animated-iframe-visibility.html',
		'arr': ['//*[@id="container"]/iframe'],
		'num': 'test_web_animations_002',
		'cla': 'web'
	},
	{
		'path': '/web-animations/timing-model/animations/document-timeline-animation.html',
		'arr': ['/html/body/div[1]', '/html/body'],
		'num': 'test_web_animations_003',
		'cla': 'web'
	},
	{
		'path': '/web-animations/timing-model/animations/infinite-duration-animation.html',
		'arr': ['//*[@id="notes"]'],
		'num': 'test_web_animations_004',
		'cla': 'web'
	},
	{
		'path': '/web-animations/timing-model/animations/reverse-running-animation.html',
		'arr': ['//*[@id="box"]'],
		'num': 'test_web_animations_005',
		'cla': 'web'
	},
	{
		'path': '/web-animations/timing-model/animations/sync-start-times.html',
		'arr': ['//*[@id="notes"]'],
		'num': 'test_web_animations_006',
		'cla': 'web'
	},
	{
		'path': '/web-animations/timing-model/animations/update-playback-rate-fast.html',
		'arr': ['//*[@id="box"]'],
		'num': 'test_web_animations_007',
		'cla': 'web'
	},
	{
		'path': '/web-animations/timing-model/animations/update-playback-rate-zero.html',
		'arr': ['//*[@id="box"]'],
		'num': 'test_web_animations_008',
		'cla': 'web'
	},
	{
		'path': '/css/CSS2/tables/border-collapse-dynamic-row-001.xht',
		'arr': ['//*[@id="target"]', '*'],
		'num': 'test_css_6001',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/border-collapse-dynamic-row-002.xht',
		'arr': ['*'],
		'num': 'test_css_6002',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/border-collapse-dynamic-row-003.xht',
		'arr': ['//*[@id="target"]', '//*[@id="reference"]'],
		'num': 'test_css_6003',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/border-collapse-dynamic-rowgroup-001.xht',
		'arr': ['//*[@id="target"]', '//*[@id="reference"]'],
		'num': 'test_css_6004',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/border-collapse-dynamic-rowgroup-002.xht',
		'arr': ['//*[@id="target"]', '*'],
		'num': 'test_css_6005',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/border-collapse-dynamic-rowgroup-003.xht',
		'arr': ['*'],
		'num': 'test_css_6006',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/border-collapse-dynamic-table-001.xht',
		'arr': ['//*[@id="target"]', '*'],
		'num': 'test_css_6007',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/border-collapse-dynamic-table-002.xht',
		'arr': ['//*[@id="target"]', '*'],
		'num': 'test_css_6008',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/border-collapse-dynamic-table-003.xht',
		'arr': ['//*[@id="target"]', '*'],
		'num': 'test_css_6009',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/border-collapse-empty-row.html',
		'arr': ['/html/body/table[2]/tbody/tr[1]/td[1]/span', '*'],
		'num': 'test_css_6010',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/border-collapse-offset-001.xht',
		'arr': ['*'],
		'num': 'test_css_6011',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/border-collapse-offset-002.xht',
		'arr': ['*'],
		'num': 'test_css_6012',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/border-conflict-element-001a.xht',
		'arr': ['//*[@id="sixteen"]', '*'],
		'num': 'test_css_6013',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/border-conflict-element-001b.xht',
		'arr': ['//*[@id="one"]', '*'],
		'num': 'test_css_6014',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/border-conflict-element-001c.xht',
		'arr': ['//*[@id="two"]', '*'],
		'num': 'test_css_6015',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/border-conflict-element-001d.xht',
		'arr': ['//*[@id="four"]', '*'],
		'num': 'test_css_6016',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/border-conflict-element-001e.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_6017',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/border-spacing-applies-to-016.xht',
		'arr': ['*'],
		'num': 'test_css_6018',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/border-spacing-percentage-001.xht',
		'arr': ['*'],
		'num': 'test_css_6019',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/caption-position-001.xht',
		'arr': ['*', '//*[@id="first"]'],
		'num': 'test_css_6020',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/caption-side-applies-to-001.xht',
		'arr': ['*', '/html/body/div'],
		'num': 'test_css_6021',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/caption-side-applies-to-002.xht',
		'arr': ['*', '/html/body/div[3]'],
		'num': 'test_css_6022',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/caption-side-applies-to-003.xht',
		'arr': ['*', '/html/body/div'],
		'num': 'test_css_6023',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/caption-side-applies-to-005.xht',
		'arr': ['*', '/html/body/div'],
		'num': 'test_css_6024',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/caption-side-applies-to-006.xht',
		'arr': ['//*[@id="cell"]', '*'],
		'num': 'test_css_6025',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/caption-side-applies-to-007.xht',
		'arr': ['//*[@id="row"]', '*'],
		'num': 'test_css_6026',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/caption-side-applies-to-008.xht',
		'arr': ['//*[@id="caption"]', '*'],
		'num': 'test_css_6027',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/caption-side-applies-to-009.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_6028',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/caption-side-applies-to-010.xht',
		'arr': ['//*[@id="table"]', '*'],
		'num': 'test_css_6029',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/caption-side-applies-to-011.xht',
		'arr': ['//*[@id="column"]', '*'],
		'num': 'test_css_6030',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/caption-side-applies-to-012.xht',
		'arr': ['//*[@id="cell"]', '*'],
		'num': 'test_css_6031',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/caption-side-applies-to-013.xht',
		'arr': ['//*[@id="table"]', '*'],
		'num': 'test_css_6032',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/caption-side-applies-to-014.xht',
		'arr': ['//*[@id="caption"]', '*'],
		'num': 'test_css_6033',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/caption-side-applies-to-015.xht',
		'arr': ['//*[@id="row"]', '*'],
		'num': 'test_css_6034',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/caption-side-applies-to-016.xht',
		'arr': ['*'],
		'num': 'test_css_6035',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/caption-side-applies-to-017.xht',
		'arr': ['//*[@id="cell"]', '*'],
		'num': 'test_css_6036',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/collapsing-border-model-001.xht',
		'arr': ['//*[@id="div1"]', '*'],
		'num': 'test_css_6037',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/collapsing-border-model-003.xht',
		'arr': ['//*[@id="div1"]', '*'],
		'num': 'test_css_6038',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/collapsing-border-model-004.xht',
		'arr': ['//*[@id="div1"]', '*'],
		'num': 'test_css_6039',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/collapsing-border-model-007.xht',
		'arr': ['//*[@id="div1"]', '*'],
		'num': 'test_css_6040',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/collapsing-border-model-008.xht',
		'arr': ['//*[@id="div1"]', '*'],
		'num': 'test_css_6041',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/collapsing-border-model-009.xht',
		'arr': ['//*[@id="div1"]', '*'],
		'num': 'test_css_6042',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/collapsing-border-model-010a.xht',
		'arr': ['*'],
		'num': 'test_css_6043',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/collapsing-border-model-010b.xht',
		'arr': ['//*[@id="table-header"]', '*'],
		'num': 'test_css_6044',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/column-visibility-004.xht',
		'arr': ['*'],
		'num': 'test_css_6045',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/empty-cells-applies-to-008.xht',
		'arr': ['//*[@id="table"]', '*'],
		'num': 'test_css_6046',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/empty-cells-applies-to-009.xht',
		'arr': ['//*[@id="table"]', '*'],
		'num': 'test_css_6047',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/empty-cells-applies-to-010.xht',
		'arr': ['//*[@id="table"]', '*'],
		'num': 'test_css_6048',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/empty-cells-applies-to-011.xht',
		'arr': ['//*[@id="table"]', '*'],
		'num': 'test_css_6049',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/empty-cells-applies-to-012.xht',
		'arr': ['//*[@id="table"]', '*'],
		'num': 'test_css_6050',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/empty-cells-applies-to-013.xht',
		'arr': ['//*[@id="table"]', '*'],
		'num': 'test_css_6051',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/empty-cells-applies-to-014.xht',
		'arr': ['//*[@id="table"]', '*'],
		'num': 'test_css_6052',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/empty-cells-applies-to-016.xht',
		'arr': ['//*[@id="table"]', '*'],
		'num': 'test_css_6053',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/empty-cells-applies-to-017.xht',
		'arr': ['//*[@id="table"]', '*'],
		'num': 'test_css_6054',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/fixed-table-layout-002a.xht',
		'arr': ['//*[@id="first-column"]', '//*[@id="lime-line"]'],
		'num': 'test_css_6055',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/fixed-table-layout-003a01.xht',
		'arr': ['//*[@id="tested-cell"]', '//*[@id="blue-stripe"]'],
		'num': 'test_css_6056',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/fixed-table-layout-003a02.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="blue-stripe"]'],
		'num': 'test_css_6057',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/fixed-table-layout-003a03.xht',
		'arr': ['//*[@id="tested-cell"]', '//*[@id="reference"]'],
		'num': 'test_css_6058',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/fixed-table-layout-003a04.xht',
		'arr': ['//*[@id="tested-cell"]', '//*[@id="blue-stripe"]'],
		'num': 'test_css_6059',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/fixed-table-layout-003a05.xht',
		'arr': ['//*[@id="tested-cell"]', '//*[@id="reference"]'],
		'num': 'test_css_6060',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/fixed-table-layout-003a06.xht',
		'arr': ['//*[@id="reference"]'],
		'num': 'test_css_6061',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/fixed-table-layout-003b01.xht',
		'arr': ['//*[@id="reference"]'],
		'num': 'test_css_6062',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/fixed-table-layout-003b02.xht',
		'arr': ['//*[@id="tested-cell"]', '//*[@id="reference"]'],
		'num': 'test_css_6063',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/fixed-table-layout-003b03.xht',
		'arr': ['//*[@id="tested-cell"]', '//*[@id="blue-stripe"]'],
		'num': 'test_css_6064',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/fixed-table-layout-003b04.xht',
		'arr': ['//*[@id="tested-cell"]', '//*[@id="reference"]'],
		'num': 'test_css_6065',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/fixed-table-layout-003b05.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="blue-stripe"]'],
		'num': 'test_css_6066',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/fixed-table-layout-003b06.xht',
		'arr': ['//*[@id="reference"]'],
		'num': 'test_css_6067',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/fixed-table-layout-003b07.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="blue-stripe"]'],
		'num': 'test_css_6068',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/fixed-table-layout-003b08.xht',
		'arr': ['//*[@id="reference"]'],
		'num': 'test_css_6069',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/fixed-table-layout-003b09.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="blue-stripe"]'],
		'num': 'test_css_6070',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/fixed-table-layout-003b10.xht',
		'arr': ['//*[@id="tested-cell"]', '//*[@id="reference"]'],
		'num': 'test_css_6071',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/fixed-table-layout-003b11.xht',
		'arr': ['//*[@id="tested-cell"]', '//*[@id="blue-stripe"]'],
		'num': 'test_css_6072',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/fixed-table-layout-003b12.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="blue-stripe"]'],
		'num': 'test_css_6073',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/fixed-table-layout-003c01.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="blue-stripe"]'],
		'num': 'test_css_6074',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/fixed-table-layout-003c02.xht',
		'arr': ['//*[@id="tested-cell"]', '//*[@id="blue-stripe"]'],
		'num': 'test_css_6075',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/fixed-table-layout-003c03.xht',
		'arr': ['//*[@id="tested-cell"]', '//*[@id="reference"]'],
		'num': 'test_css_6076',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/fixed-table-layout-003c04.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="blue-stripe"]'],
		'num': 'test_css_6077',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/fixed-table-layout-003c05.xht',
		'arr': ['//*[@id="tested-cell"]', '//*[@id="blue-stripe"]'],
		'num': 'test_css_6078',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/fixed-table-layout-003c06.xht',
		'arr': ['//*[@id="tested-cell"]', '//*[@id="reference"]'],
		'num': 'test_css_6079',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/fixed-table-layout-003c07.xht',
		'arr': ['//*[@id="tested-cell"]', '//*[@id="blue-stripe"]'],
		'num': 'test_css_6080',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/fixed-table-layout-003c08.xht',
		'arr': ['//*[@id="tested-cell"]', '//*[@id="blue-stripe"]'],
		'num': 'test_css_6081',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/fixed-table-layout-003d01.xht',
		'arr': ['//*[@id="tested-cell"]', '//*[@id="reference"]'],
		'num': 'test_css_6082',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/fixed-table-layout-003d02.xht',
		'arr': ['//*[@id="tested-cell"]', '//*[@id="blue-stripe"]'],
		'num': 'test_css_6083',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/fixed-table-layout-003d03.xht',
		'arr': ['//*[@id="tested-cell"]', '//*[@id="blue-stripe"]'],
		'num': 'test_css_6084',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/fixed-table-layout-003d04.xht',
		'arr': ['//*[@id="tested-cell"]', '//*[@id="blue-stripe"]'],
		'num': 'test_css_6085',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/fixed-table-layout-003d05.xht',
		'arr': ['//*[@id="tested-cell"]', '//*[@id="reference"]'],
		'num': 'test_css_6086',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/fixed-table-layout-003d06.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="blue-stripe"]'],
		'num': 'test_css_6087',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/fixed-table-layout-003e01.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="blue-stripe"]'],
		'num': 'test_css_6088',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/fixed-table-layout-003e02.xht',
		'arr': ['//*[@id="tested-cell"]', '//*[@id="blue-stripe"]'],
		'num': 'test_css_6089',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/fixed-table-layout-003e03.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="blue-stripe"]'],
		'num': 'test_css_6090',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/fixed-table-layout-003e04.xht',
		'arr': ['//*[@id="tested-cell"]', '//*[@id="reference"]'],
		'num': 'test_css_6091',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/fixed-table-layout-003e05.xht',
		'arr': ['//*[@id="reference"]'],
		'num': 'test_css_6092',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/fixed-table-layout-003e06.xht',
		'arr': ['//*[@id="tested-cell"]', '//*[@id="blue-stripe"]'],
		'num': 'test_css_6093',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/fixed-table-layout-003e07.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="blue-stripe"]'],
		'num': 'test_css_6094',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/fixed-table-layout-003e08.xht',
		'arr': ['//*[@id="tested-cell"]', '//*[@id="reference"]'],
		'num': 'test_css_6095',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/fixed-table-layout-003e09.xht',
		'arr': ['//*[@id="reference"]'],
		'num': 'test_css_6096',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/fixed-table-layout-003e10.xht',
		'arr': ['//*[@id="tested-cell"]', '//*[@id="blue-stripe"]'],
		'num': 'test_css_6097',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/fixed-table-layout-003e11.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="blue-stripe"]'],
		'num': 'test_css_6098',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/fixed-table-layout-003e12.xht',
		'arr': ['//*[@id="tested-cell"]', '//*[@id="reference"]'],
		'num': 'test_css_6099',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/fixed-table-layout-003f01.xht',
		'arr': ['//*[@id="reference"]'],
		'num': 'test_css_6100',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/fixed-table-layout-003f02.xht',
		'arr': ['//*[@id="tested-cell"]', '//*[@id="blue-stripe"]'],
		'num': 'test_css_6101',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/fixed-table-layout-003f03.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="blue-stripe"]'],
		'num': 'test_css_6102',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/fixed-table-layout-003f04.xht',
		'arr': ['//*[@id="tested-cell"]', '//*[@id="reference"]'],
		'num': 'test_css_6103',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/fixed-table-layout-003f05.xht',
		'arr': ['//*[@id="reference"]'],
		'num': 'test_css_6104',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/fixed-table-layout-003f06.xht',
		'arr': ['//*[@id="tested-cell"]', '//*[@id="blue-stripe"]'],
		'num': 'test_css_6105',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/fixed-table-layout-003f07.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="blue-stripe"]'],
		'num': 'test_css_6106',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/fixed-table-layout-003f08.xht',
		'arr': ['//*[@id="tested-cell"]', '//*[@id="reference"]'],
		'num': 'test_css_6107',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/fixed-table-layout-017.xht',
		'arr': ['//*[@id="third-cell"]', '//*[@id="orange-stripe"]'],
		'num': 'test_css_6108',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/fixed-table-layout-018.xht',
		'arr': ['//*[@id="test"]', '//*[@id="blue-stripe"]'],
		'num': 'test_css_6109',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/fixed-table-layout-019.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="orange-stripe"]'],
		'num': 'test_css_6110',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/fixed-table-layout-020.xht',
		'arr': ['//*[@id="third-cell"]', '//*[@id="orange-stripe"]'],
		'num': 'test_css_6111',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/fixed-table-layout-021.xht',
		'arr': ['//*[@id="first-cell"]', '*'],
		'num': 'test_css_6112',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/fixed-table-layout-022.xht',
		'arr': ['//*[@id="second"]', '*'],
		'num': 'test_css_6113',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/fixed-table-layout-023.xht',
		'arr': ['//*[@id="third"]', '*'],
		'num': 'test_css_6114',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/fixed-table-layout-025.xht',
		'arr': ['//*[@id="middle-green-cell"]', '*'],
		'num': 'test_css_6115',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/fixed-table-layout-026.xht',
		'arr': ['//*[@id="middle-green-cell"]', '*'],
		'num': 'test_css_6116',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/fixed-table-layout-027.xht',
		'arr': ['//*[@id="right-red-cell"]', '*'],
		'num': 'test_css_6117',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/fixed-table-layout-028.xht',
		'arr': ['*'],
		'num': 'test_css_6118',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/fixed-table-layout-029.xht',
		'arr': ['//*[@id="right-red-cell"]', '*'],
		'num': 'test_css_6119',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/fixed-table-layout-030.xht',
		'arr': ['//*[@id="middle-green-cell"]', '*'],
		'num': 'test_css_6120',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/fixed-table-layout-031.xht',
		'arr': ['//*[@id="middle-green-cell"]', '*'],
		'num': 'test_css_6121',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/height-table-cell-001.xht',
		'arr': ['//*[@id="overlapped-red-reference"]', '*'],
		'num': 'test_css_6122',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/height-width-inline-table-001.xht',
		'arr': ['//*[@id="overlapped-red-reference"]', '*'],
		'num': 'test_css_6123',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/height-width-inline-table-001a.xht',
		'arr': ['//*[@id="overlapping-green-test"]', '*'],
		'num': 'test_css_6124',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/height-width-inline-table-001b.xht',
		'arr': ['//*[@id="overlapped-red-reference"]', '*'],
		'num': 'test_css_6125',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/height-width-inline-table-001c.xht',
		'arr': ['//*[@id="overlapping-green-test"]', '*'],
		'num': 'test_css_6126',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/height-width-inline-table-001d.xht',
		'arr': ['//*[@id="overlapped-red-reference"]', '*'],
		'num': 'test_css_6127',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/height-width-inline-table-001e.xht',
		'arr': ['//*[@id="overlapping-green-test"]', '*'],
		'num': 'test_css_6128',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/height-width-table-001.xht',
		'arr': ['//*[@id="overlapped-red-reference"]', '*'],
		'num': 'test_css_6129',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/height-width-table-001a.xht',
		'arr': ['//*[@id="overlapping-green-test"]', '*'],
		'num': 'test_css_6130',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/height-width-table-001b.xht',
		'arr': ['//*[@id="overlapped-red-reference"]', '*'],
		'num': 'test_css_6131',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/height-width-table-001c.xht',
		'arr': ['//*[@id="overlapping-green-test"]', '*'],
		'num': 'test_css_6132',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/height-width-table-001d.xht',
		'arr': ['//*[@id="overlapped-red-reference"]', '*'],
		'num': 'test_css_6133',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/height-width-table-001e.xht',
		'arr': ['//*[@id="overlapping-green-test"]', '*'],
		'num': 'test_css_6134',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/padding-applies-to-013a.xht',
		'arr': ['//*[@id="green-overlapping-table"]', '*'],
		'num': 'test_css_6135',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/row-visibility-001.xht',
		'arr': ['//*[@id="row2"]', '*'],
		'num': 'test_css_6136',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/row-visibility-002.xht',
		'arr': ['//*[@id="rowgroup2"]', '*'],
		'num': 'test_css_6137',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/separated-border-model-003a.xht',
		'arr': ['//*[@id="overlapped-red"]', '*'],
		'num': 'test_css_6138',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/separated-border-model-003b.xht',
		'arr': ['*'],
		'num': 'test_css_6139',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/separated-border-model-004a.xht',
		'arr': ['//*[@id="overlapped-red"]', '*'],
		'num': 'test_css_6140',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/separated-border-model-004b.xht',
		'arr': ['//*[@id="overlapping-green-table"]', '*'],
		'num': 'test_css_6141',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/separated-border-model-004c.xht',
		'arr': ['//*[@id="overlapped-red"]', '*'],
		'num': 'test_css_6142',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/separated-border-model-004d.xht',
		'arr': ['//*[@id="table-sum-of-columns"]', '*'],
		'num': 'test_css_6143',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/separated-border-model-004e.xht',
		'arr': ['//*[@id="td"]', '//*[@id="second"]'],
		'num': 'test_css_6144',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/separated-border-model-007.xht',
		'arr': ['//*[@id="expected-results"]', '*'],
		'num': 'test_css_6145',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/separated-border-model-008.xht',
		'arr': ['//*[@id="between-tbody-and-tfoot"]', '*'],
		'num': 'test_css_6146',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/separated-border-model-009.xht',
		'arr': ['//*[@id="after-2nd-tbody"]', '*'],
		'num': 'test_css_6147',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-border-spacing.xht',
		'arr': ['//*[@id="target"]'],
		'num': 'test_css_6148',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-009.xht',
		'arr': ['*', '//*[@id="inner1"]'],
		'num': 'test_css_6149',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-010.xht',
		'arr': ['*', '//*[@id="inner2"]'],
		'num': 'test_css_6150',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-011.xht',
		'arr': ['*', '//*[@id="inner1"]'],
		'num': 'test_css_6151',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-012.xht',
		'arr': ['*', '//*[@id="inner2"]'],
		'num': 'test_css_6152',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-015.xht',
		'arr': ['*', '//*[@id="inner1"]'],
		'num': 'test_css_6153',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-016.xht',
		'arr': ['*', '//*[@id="outer"]'],
		'num': 'test_css_6154',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-017.xht',
		'arr': ['*', '//*[@id="inner2"]'],
		'num': 'test_css_6155',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-018.xht',
		'arr': ['*', '//*[@id="inner1"]'],
		'num': 'test_css_6156',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-019.xht',
		'arr': ['*', '//*[@id="outer"]'],
		'num': 'test_css_6157',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-020.xht',
		'arr': ['*', '//*[@id="inner2"]'],
		'num': 'test_css_6158',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-059.xht',
		'arr': ['*', '//*[@id="red"]'],
		'num': 'test_css_6159',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-060.xht',
		'arr': ['*', '//*[@id="green"]'],
		'num': 'test_css_6160',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-061.xht',
		'arr': ['*', '//*[@id="red"]'],
		'num': 'test_css_6161',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-062.xht',
		'arr': ['*', '//*[@id="green"]'],
		'num': 'test_css_6162',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-063.xht',
		'arr': ['*', '//*[@id="red"]'],
		'num': 'test_css_6163',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-064.xht',
		'arr': ['*', '//*[@id="green"]'],
		'num': 'test_css_6164',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-065.xht',
		'arr': ['*', '//*[@id="red"]'],
		'num': 'test_css_6165',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-066.xht',
		'arr': ['*', '//*[@id="green"]'],
		'num': 'test_css_6166',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-067.xht',
		'arr': ['*', '//*[@id="red"]'],
		'num': 'test_css_6167',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-068.xht',
		'arr': ['*', '//*[@id="green"]'],
		'num': 'test_css_6168',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-069.xht',
		'arr': ['*', '//*[@id="red"]'],
		'num': 'test_css_6169',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-070.xht',
		'arr': ['*', '//*[@id="green"]'],
		'num': 'test_css_6170',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-071.xht',
		'arr': ['*', '//*[@id="red"]'],
		'num': 'test_css_6171',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-072.xht',
		'arr': ['*', '//*[@id="green"]'],
		'num': 'test_css_6172',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-073.xht',
		'arr': ['*', '//*[@id="red"]'],
		'num': 'test_css_6173',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-074.xht',
		'arr': ['*', '//*[@id="green"]'],
		'num': 'test_css_6174',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-075.xht',
		'arr': ['*', '//*[@id="red"]'],
		'num': 'test_css_6175',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-076.xht',
		'arr': ['*', '//*[@id="green"]'],
		'num': 'test_css_6176',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-077.xht',
		'arr': ['*', '//*[@id="red"]'],
		'num': 'test_css_6177',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-078.xht',
		'arr': ['*', '//*[@id="green"]'],
		'num': 'test_css_6178',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-079.xht',
		'arr': ['*', '//*[@id="red"]'],
		'num': 'test_css_6179',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-080.xht',
		'arr': ['*', '//*[@id="green"]'],
		'num': 'test_css_6180',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-081.xht',
		'arr': ['*', '//*[@id="red"]'],
		'num': 'test_css_6181',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-082.xht',
		'arr': ['*', '//*[@id="green"]'],
		'num': 'test_css_6182',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-083.xht',
		'arr': ['*', '//*[@id="red"]'],
		'num': 'test_css_6183',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-084.xht',
		'arr': ['*', '//*[@id="green"]'],
		'num': 'test_css_6184',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-085.xht',
		'arr': ['*', '//*[@id="red"]'],
		'num': 'test_css_6185',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-086.xht',
		'arr': ['*', '//*[@id="green"]'],
		'num': 'test_css_6186',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-087.xht',
		'arr': ['*', '//*[@id="red"]'],
		'num': 'test_css_6187',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-088.xht',
		'arr': ['*', '//*[@id="green"]'],
		'num': 'test_css_6188',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-089.xht',
		'arr': ['*', '//*[@id="red"]'],
		'num': 'test_css_6189',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-090.xht',
		'arr': ['*', '//*[@id="green"]'],
		'num': 'test_css_6190',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-091.xht',
		'arr': ['*', '//*[@id="red"]'],
		'num': 'test_css_6191',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-092.xht',
		'arr': ['*', '//*[@id="green"]'],
		'num': 'test_css_6192',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-093.xht',
		'arr': ['*', '//*[@id="red"]'],
		'num': 'test_css_6193',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-094.xht',
		'arr': ['*', '//*[@id="green"]'],
		'num': 'test_css_6194',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-095.xht',
		'arr': ['*', '//*[@id="red"]'],
		'num': 'test_css_6195',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-096.xht',
		'arr': ['*', '//*[@id="green"]'],
		'num': 'test_css_6196',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-097.xht',
		'arr': ['*', '//*[@id="red"]'],
		'num': 'test_css_6197',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-098.xht',
		'arr': ['*', '//*[@id="green"]'],
		'num': 'test_css_6198',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-099.xht',
		'arr': ['*', '//*[@id="red"]'],
		'num': 'test_css_6199',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-100.xht',
		'arr': ['*', '//*[@id="green"]'],
		'num': 'test_css_6200',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-101.xht',
		'arr': ['*', '//*[@id="red"]'],
		'num': 'test_css_6201',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-102.xht',
		'arr': ['*', '//*[@id="green"]'],
		'num': 'test_css_6202',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-103.xht',
		'arr': ['*', '//*[@id="green"]'],
		'num': 'test_css_6203',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-104.xht',
		'arr': ['*', '//*[@id="red"]'],
		'num': 'test_css_6204',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-105.xht',
		'arr': ['*', '//*[@id="green"]'],
		'num': 'test_css_6205',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-106.xht',
		'arr': ['*', '//*[@id="red"]'],
		'num': 'test_css_6206',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-107.xht',
		'arr': ['*', '//*[@id="green"]'],
		'num': 'test_css_6207',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-108.xht',
		'arr': ['*', '//*[@id="red"]'],
		'num': 'test_css_6208',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-109.xht',
		'arr': ['*', '//*[@id="green"]'],
		'num': 'test_css_6209',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-110.xht',
		'arr': ['*', '//*[@id="red"]'],
		'num': 'test_css_6210',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-111.xht',
		'arr': ['*', '//*[@id="green"]'],
		'num': 'test_css_6211',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-112.xht',
		'arr': ['*', '//*[@id="red"]'],
		'num': 'test_css_6212',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-113.xht',
		'arr': ['*', '//*[@id="green"]'],
		'num': 'test_css_6213',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-114.xht',
		'arr': ['*', '//*[@id="red"]'],
		'num': 'test_css_6214',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-115.xht',
		'arr': ['*', '//*[@id="green"]'],
		'num': 'test_css_6215',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-116.xht',
		'arr': ['*', '//*[@id="red"]'],
		'num': 'test_css_6216',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-117.xht',
		'arr': ['*', '//*[@id="green"]'],
		'num': 'test_css_6217',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-118.xht',
		'arr': ['*', '//*[@id="red"]'],
		'num': 'test_css_6218',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-119.xht',
		'arr': ['*', '//*[@id="green"]'],
		'num': 'test_css_6219',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-120.xht',
		'arr': ['*', '//*[@id="red"]'],
		'num': 'test_css_6220',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-121.xht',
		'arr': ['*', '//*[@id="green"]'],
		'num': 'test_css_6221',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-122.xht',
		'arr': ['*', '//*[@id="red"]'],
		'num': 'test_css_6222',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-123.xht',
		'arr': ['*', '//*[@id="green"]'],
		'num': 'test_css_6223',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-124.xht',
		'arr': ['*', '//*[@id="red"]'],
		'num': 'test_css_6224',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-125.xht',
		'arr': ['*', '//*[@id="green"]'],
		'num': 'test_css_6225',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-126.xht',
		'arr': ['*', '//*[@id="red"]'],
		'num': 'test_css_6226',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-127.xht',
		'arr': ['*', '//*[@id="green"]'],
		'num': 'test_css_6227',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-128.xht',
		'arr': ['*', '//*[@id="red"]'],
		'num': 'test_css_6228',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-129.xht',
		'arr': ['*', '//*[@id="green"]'],
		'num': 'test_css_6229',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-130.xht',
		'arr': ['*', '//*[@id="red"]'],
		'num': 'test_css_6230',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-131.xht',
		'arr': ['*', '//*[@id="green"]'],
		'num': 'test_css_6231',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-132.xht',
		'arr': ['*', '//*[@id="red"]'],
		'num': 'test_css_6232',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-133.xht',
		'arr': ['*', '//*[@id="green"]'],
		'num': 'test_css_6233',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-134.xht',
		'arr': ['*', '//*[@id="red"]'],
		'num': 'test_css_6234',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-135.xht',
		'arr': ['*', '//*[@id="green"]'],
		'num': 'test_css_6235',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-136.xht',
		'arr': ['*', '//*[@id="red"]'],
		'num': 'test_css_6236',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-137.xht',
		'arr': ['*', '//*[@id="green"]'],
		'num': 'test_css_6237',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-138.xht',
		'arr': ['*', '//*[@id="red"]'],
		'num': 'test_css_6238',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-139.xht',
		'arr': ['*', '//*[@id="green"]'],
		'num': 'test_css_6239',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-140.xht',
		'arr': ['*', '//*[@id="red"]'],
		'num': 'test_css_6240',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-141.xht',
		'arr': ['*', '//*[@id="green"]'],
		'num': 'test_css_6241',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-142.xht',
		'arr': ['*', '//*[@id="red"]'],
		'num': 'test_css_6242',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-143.xht',
		'arr': ['*', '//*[@id="green"]'],
		'num': 'test_css_6243',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-144.xht',
		'arr': ['*', '//*[@id="red"]'],
		'num': 'test_css_6244',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-145.xht',
		'arr': ['*', '//*[@id="green"]'],
		'num': 'test_css_6245',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-146.xht',
		'arr': ['*', '//*[@id="red"]'],
		'num': 'test_css_6246',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-147.xht',
		'arr': ['*', '//*[@id="green"]'],
		'num': 'test_css_6247',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-148.xht',
		'arr': ['*', '//*[@id="red"]'],
		'num': 'test_css_6248',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-149.xht',
		'arr': ['*', '//*[@id="green"]'],
		'num': 'test_css_6249',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-150.xht',
		'arr': ['*', '//*[@id="red"]'],
		'num': 'test_css_6250',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-151.xht',
		'arr': ['*', '//*[@id="green"]'],
		'num': 'test_css_6251',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-152.xht',
		'arr': ['*', '//*[@id="red"]'],
		'num': 'test_css_6252',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-153.xht',
		'arr': ['*', '//*[@id="green"]'],
		'num': 'test_css_6253',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-154.xht',
		'arr': ['*', '//*[@id="red"]'],
		'num': 'test_css_6254',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-155.xht',
		'arr': ['*', '//*[@id="green"]'],
		'num': 'test_css_6255',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-156.xht',
		'arr': ['*', '//*[@id="red"]'],
		'num': 'test_css_6256',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-157.xht',
		'arr': ['*', '//*[@id="green"]'],
		'num': 'test_css_6257',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-158.xht',
		'arr': ['*', '//*[@id="red"]'],
		'num': 'test_css_6258',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-159.xht',
		'arr': ['*', '//*[@id="green"]'],
		'num': 'test_css_6259',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-160.xht',
		'arr': ['*', '//*[@id="red"]'],
		'num': 'test_css_6260',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-161.xht',
		'arr': ['*', '//*[@id="green"]'],
		'num': 'test_css_6261',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-162.xht',
		'arr': ['*', '//*[@id="red"]'],
		'num': 'test_css_6262',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-163.xht',
		'arr': ['*', '//*[@id="green"]'],
		'num': 'test_css_6263',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-164.xht',
		'arr': ['*', '//*[@id="red"]'],
		'num': 'test_css_6264',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-165.xht',
		'arr': ['*', '//*[@id="green"]'],
		'num': 'test_css_6265',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-166.xht',
		'arr': ['*', '//*[@id="red"]'],
		'num': 'test_css_6266',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-167.xht',
		'arr': ['*', '//*[@id="outer"]'],
		'num': 'test_css_6267',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-168.xht',
		'arr': ['*', '//*[@id="inner1"]'],
		'num': 'test_css_6268',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-169.xht',
		'arr': ['*', '//*[@id="inner2"]'],
		'num': 'test_css_6269',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-170.xht',
		'arr': ['*', '//*[@id="outer"]'],
		'num': 'test_css_6270',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-171.xht',
		'arr': ['*', '//*[@id="inner1"]'],
		'num': 'test_css_6271',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-172.xht',
		'arr': ['*', '//*[@id="inner2"]'],
		'num': 'test_css_6272',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-173.xht',
		'arr': ['*', '//*[@id="outer"]'],
		'num': 'test_css_6273',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-174.xht',
		'arr': ['*', '//*[@id="inner1"]'],
		'num': 'test_css_6274',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-175.xht',
		'arr': ['*', '//*[@id="inner2"]'],
		'num': 'test_css_6275',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-176.xht',
		'arr': ['*', '//*[@id="outer"]'],
		'num': 'test_css_6276',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-177.xht',
		'arr': ['*', '//*[@id="inner1"]'],
		'num': 'test_css_6277',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-178.xht',
		'arr': ['*', '//*[@id="inner2"]'],
		'num': 'test_css_6278',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-179.xht',
		'arr': ['*', '//*[@id="outer"]'],
		'num': 'test_css_6279',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-180.xht',
		'arr': ['*', '//*[@id="inner1"]'],
		'num': 'test_css_6280',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-181.xht',
		'arr': ['*', '//*[@id="inner2"]'],
		'num': 'test_css_6281',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-182.xht',
		'arr': ['*', '//*[@id="outer"]'],
		'num': 'test_css_6282',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-183.xht',
		'arr': ['*', '//*[@id="inner2"]'],
		'num': 'test_css_6283',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-184.xht',
		'arr': ['*', '//*[@id="inner1"]'],
		'num': 'test_css_6284',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-185.xht',
		'arr': ['*', '//*[@id="outer"]'],
		'num': 'test_css_6285',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-186.xht',
		'arr': ['*', '//*[@id="inner2"]'],
		'num': 'test_css_6286',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-187.xht',
		'arr': ['*', '//*[@id="inner1"]'],
		'num': 'test_css_6287',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-188.xht',
		'arr': ['*', '//*[@id="outer"]'],
		'num': 'test_css_6288',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-189.xht',
		'arr': ['*', '//*[@id="inner2"]'],
		'num': 'test_css_6289',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-190.xht',
		'arr': ['*', '//*[@id="inner1"]'],
		'num': 'test_css_6290',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-191.xht',
		'arr': ['*', '//*[@id="outer"]'],
		'num': 'test_css_6291',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-192.xht',
		'arr': ['*', '//*[@id="inner2"]'],
		'num': 'test_css_6292',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-193.xht',
		'arr': ['*', '//*[@id="inner1"]'],
		'num': 'test_css_6293',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-194.xht',
		'arr': ['*', '//*[@id="outer"]'],
		'num': 'test_css_6294',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-195.xht',
		'arr': ['*', '//*[@id="inner2"]'],
		'num': 'test_css_6295',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-196.xht',
		'arr': ['*', '//*[@id="inner1"]'],
		'num': 'test_css_6296',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-197.xht',
		'arr': ['*', '//*[@id="outer"]'],
		'num': 'test_css_6297',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-198.xht',
		'arr': ['*', '//*[@id="inner2"]'],
		'num': 'test_css_6298',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-199.xht',
		'arr': ['*', '//*[@id="inner1"]'],
		'num': 'test_css_6299',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-200.xht',
		'arr': ['*', '//*[@id="outer"]'],
		'num': 'test_css_6300',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-201.xht',
		'arr': ['*', '//*[@id="inner1"]'],
		'num': 'test_css_6301',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-202.xht',
		'arr': ['*', '//*[@id="inner2"]'],
		'num': 'test_css_6302',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-203.xht',
		'arr': ['*', '//*[@id="outer"]'],
		'num': 'test_css_6303',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-204.xht',
		'arr': ['*', '//*[@id="inner1"]'],
		'num': 'test_css_6304',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-205.xht',
		'arr': ['*', '//*[@id="inner2"]'],
		'num': 'test_css_6305',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-206.xht',
		'arr': ['*', '//*[@id="outer"]'],
		'num': 'test_css_6306',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-objects-211.xht',
		'arr': ['*'],
		'num': 'test_css_6307',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-anonymous-text-indent.xht',
		'arr': ['//*[@id="target"]'],
		'num': 'test_css_6308',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-backgrounds-bc-cell-001.xht',
		'arr': ['*'],
		'num': 'test_css_6309',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-backgrounds-bc-colgroup-001.xht',
		'arr': ['*', '*'],
		'num': 'test_css_6310',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-backgrounds-bc-column-001.xht',
		'arr': ['*', '*'],
		'num': 'test_css_6311',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-backgrounds-bc-row-001.xht',
		'arr': ['*', '*'],
		'num': 'test_css_6312',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-backgrounds-bc-rowgroup-001.xht',
		'arr': ['*', '*'],
		'num': 'test_css_6313',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-backgrounds-bc-table-001.xht',
		'arr': ['*', '*'],
		'num': 'test_css_6314',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-backgrounds-bs-cell-001.xht',
		'arr': ['*', '*'],
		'num': 'test_css_6315',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-backgrounds-bs-colgroup-001.xht',
		'arr': ['*', '*'],
		'num': 'test_css_6316',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-backgrounds-bs-column-001.xht',
		'arr': ['*', '*'],
		'num': 'test_css_6317',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-backgrounds-bs-row-001.xht',
		'arr': ['*', '*'],
		'num': 'test_css_6318',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-backgrounds-bs-rowgroup-001.xht',
		'arr': ['*', '*'],
		'num': 'test_css_6319',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-backgrounds-bs-table-001.xht',
		'arr': ['*', '*'],
		'num': 'test_css_6320',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-cell-001.xht',
		'arr': ['*', '*'],
		'num': 'test_css_6321',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-column-rendering-001.xht',
		'arr': ['//*[@id="table"]', '*'],
		'num': 'test_css_6322',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-column-rendering-002.xht',
		'arr': ['//*[@id="table"]', '*'],
		'num': 'test_css_6323',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-height-algorithm-008a.xht',
		'arr': ['//*[@id="overlapped-red-reference"]', '*'],
		'num': 'test_css_6324',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-height-algorithm-008b.xht',
		'arr': ['//*[@id="overlapping-green-test"]', '*'],
		'num': 'test_css_6325',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-height-algorithm-008c.xht',
		'arr': ['//*[@id="overlapped-red-reference"]', '*'],
		'num': 'test_css_6326',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-layout-applies-to-016.xht',
		'arr': ['*', '*'],
		'num': 'test_css_6327',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-margin-004.xht',
		'arr': ['//*[@id="wrapper"]', '*'],
		'num': 'test_css_6328',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-vertical-align-baseline-001.xht',
		'arr': ['*', '*'],
		'num': 'test_css_6329',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-vertical-align-baseline-002.xht',
		'arr': ['*', '*'],
		'num': 'test_css_6330',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-vertical-align-baseline-003.xht',
		'arr': ['*', '*'],
		'num': 'test_css_6331',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-vertical-align-baseline-004.xht',
		'arr': ['*', '*'],
		'num': 'test_css_6332',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-vertical-align-baseline-005.xht',
		'arr': ['*', '*'],
		'num': 'test_css_6333',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-vertical-align-baseline-006.xht',
		'arr': ['*', '*'],
		'num': 'test_css_6334',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-vertical-align-baseline-007.xht',
		'arr': ['*', '*'],
		'num': 'test_css_6335',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-visual-layout-017.xht',
		'arr': ['*', '*'],
		'num': 'test_css_6336',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-visual-layout-018.xht',
		'arr': ['*', '*'],
		'num': 'test_css_6337',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-visual-layout-026a.xht',
		'arr': ['//*[@id="red-overlapped"]', '*'],
		'num': 'test_css_6338',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-visual-layout-026b.xht',
		'arr': ['//*[@id="overlapping-green"]', '*'],
		'num': 'test_css_6339',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-visual-layout-026c.xht',
		'arr': ['//*[@id="red-overlapped"]', '*'],
		'num': 'test_css_6340',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/tables/table-visual-layout-026d.xht',
		'arr': ['//*[@id="overlapping-green"]', '*'],
		'num': 'test_css_6341',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/bidi-flag-emoji-02.html',
		'arr': ['/html/body', '/html/body/table/tbody/tr/td[1]'],
		'num': 'test_css_6342',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/bidi-flag-emoji.html',
		'arr': ['/html/body', '/html/body/div/span'],
		'num': 'test_css_6343',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/bidi-span-001.html',
		'arr': ['/html/body', '/html/body/div[3]'],
		'num': 'test_css_6344',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/bidi-span-002.html',
		'arr': ['/html/body'],
		'num': 'test_css_6345',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/bidi-span-003.html',
		'arr': ['/html/body', '/html/body/div/div[2]/span[1]'],
		'num': 'test_css_6346',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/letter-spacing-004.xht',
		'arr': ['*'],
		'num': 'test_css_6347',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/letter-spacing-005.xht',
		'arr': ['*'],
		'num': 'test_css_6348',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/letter-spacing-006.xht',
		'arr': ['*'],
		'num': 'test_css_6349',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/letter-spacing-007.xht',
		'arr': ['*'],
		'num': 'test_css_6350',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/letter-spacing-008.xht',
		'arr': ['//*[@id="span1"]'],
		'num': 'test_css_6351',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/letter-spacing-016.xht',
		'arr': ['*'],
		'num': 'test_css_6352',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/letter-spacing-017.xht',
		'arr': ['*'],
		'num': 'test_css_6353',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/letter-spacing-018.xht',
		'arr': ['*'],
		'num': 'test_css_6354',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/letter-spacing-019.xht',
		'arr': ['//*[@id="span1"]'],
		'num': 'test_css_6355',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/letter-spacing-020.xht',
		'arr': ['//*[@id="test"]', '//*[@id="span2"]'],
		'num': 'test_css_6356',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/letter-spacing-028.xht',
		'arr': ['*'],
		'num': 'test_css_6357',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/letter-spacing-029.xht',
		'arr': ['*'],
		'num': 'test_css_6358',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/letter-spacing-030.xht',
		'arr': ['*'],
		'num': 'test_css_6359',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/letter-spacing-031.xht',
		'arr': ['//*[@id="test"]', '//*[@id="span1"]'],
		'num': 'test_css_6360',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/letter-spacing-032.xht',
		'arr': ['//*[@id="span1"]', '//*[@id="span2"]'],
		'num': 'test_css_6361',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/letter-spacing-040.xht',
		'arr': ['*'],
		'num': 'test_css_6362',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/letter-spacing-041.xht',
		'arr': ['*'],
		'num': 'test_css_6363',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/letter-spacing-042.xht',
		'arr': ['*'],
		'num': 'test_css_6364',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/letter-spacing-043.xht',
		'arr': ['//*[@id="span1"]'],
		'num': 'test_css_6365',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/letter-spacing-044.xht',
		'arr': ['//*[@id="span1"]', '//*[@id="span2"]'],
		'num': 'test_css_6366',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/letter-spacing-052.xht',
		'arr': ['*'],
		'num': 'test_css_6367',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/letter-spacing-053.xht',
		'arr': ['*'],
		'num': 'test_css_6368',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/letter-spacing-054.xht',
		'arr': ['*'],
		'num': 'test_css_6369',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/letter-spacing-055.xht',
		'arr': ['//*[@id="test"]', '//*[@id="span2"]'],
		'num': 'test_css_6370',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/letter-spacing-056.xht',
		'arr': ['//*[@id="test"]', '//*[@id="span1"]'],
		'num': 'test_css_6371',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/letter-spacing-064.xht',
		'arr': ['*'],
		'num': 'test_css_6372',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/letter-spacing-065.xht',
		'arr': ['*'],
		'num': 'test_css_6373',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/letter-spacing-066.xht',
		'arr': ['*'],
		'num': 'test_css_6374',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/letter-spacing-067.xht',
		'arr': ['//*[@id="span1"]'],
		'num': 'test_css_6375',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/letter-spacing-068.xht',
		'arr': ['//*[@id="span1"]', '//*[@id="span2"]'],
		'num': 'test_css_6376',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/letter-spacing-076.xht',
		'arr': ['*'],
		'num': 'test_css_6377',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/letter-spacing-077.xht',
		'arr': ['*'],
		'num': 'test_css_6378',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/letter-spacing-078.xht',
		'arr': ['*'],
		'num': 'test_css_6379',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/letter-spacing-079.xht',
		'arr': ['//*[@id="test"]', '//*[@id="span1"]'],
		'num': 'test_css_6380',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/letter-spacing-080.xht',
		'arr': ['//*[@id="test"]', '//*[@id="span2"]'],
		'num': 'test_css_6381',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/letter-spacing-088.xht',
		'arr': ['*'],
		'num': 'test_css_6382',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/letter-spacing-089.xht',
		'arr': ['*'],
		'num': 'test_css_6383',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/letter-spacing-090.xht',
		'arr': ['*'],
		'num': 'test_css_6384',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/letter-spacing-091.xht',
		'arr': ['//*[@id="span1"]'],
		'num': 'test_css_6385',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/letter-spacing-092.xht',
		'arr': ['//*[@id="span1"]', '//*[@id="span2"]'],
		'num': 'test_css_6386',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/letter-spacing-097.xht',
		'arr': ['*'],
		'num': 'test_css_6387',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/letter-spacing-098.xht',
		'arr': ['*'],
		'num': 'test_css_6388',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/letter-spacing-099.xht',
		'arr': ['*'],
		'num': 'test_css_6389',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/letter-spacing-100.xht',
		'arr': ['*'],
		'num': 'test_css_6390',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/letter-spacing-101.xht',
		'arr': ['//*[@id="div1"]', '//*[@id="span1"]'],
		'num': 'test_css_6391',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/letter-spacing-102.xht',
		'arr': ['//*[@id="alter"]', '//*[@id="control"]'],
		'num': 'test_css_6392',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/letter-spacing-applies-to-001.xht',
		'arr': ['//*[@id="div1"]', '//*[@id="black"]'],
		'num': 'test_css_6393',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/letter-spacing-applies-to-002.xht',
		'arr': ['//*[@id="div1"]', '//*[@id="blue"]'],
		'num': 'test_css_6394',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/letter-spacing-applies-to-003.xht',
		'arr': ['//*[@id="div2"]'],
		'num': 'test_css_6395',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/letter-spacing-applies-to-005.xht',
		'arr': ['//*[@id="div1"]', '//*[@id="div2"]'],
		'num': 'test_css_6396',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/letter-spacing-applies-to-006.xht',
		'arr': ['//*[@id="table"]', '//*[@id="black"]'],
		'num': 'test_css_6397',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/letter-spacing-applies-to-007.xht',
		'arr': ['//*[@id="cell"]'],
		'num': 'test_css_6398',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/letter-spacing-applies-to-008.xht',
		'arr': ['//*[@id="row"]', '//*[@id="blue"]'],
		'num': 'test_css_6399',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/letter-spacing-applies-to-009.xht',
		'arr': ['//*[@id="test"]', '//*[@id="black"]'],
		'num': 'test_css_6400',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/letter-spacing-applies-to-010.xht',
		'arr': ['//*[@id="row"]', '//*[@id="blue"]'],
		'num': 'test_css_6401',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/letter-spacing-applies-to-011.xht',
		'arr': ['//*[@id="div1"]', '//*[@id="blue"]'],
		'num': 'test_css_6402',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/letter-spacing-applies-to-012.xht',
		'arr': ['//*[@id="table"]'],
		'num': 'test_css_6403',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/letter-spacing-applies-to-013.xht',
		'arr': ['//*[@id="row"]'],
		'num': 'test_css_6404',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/letter-spacing-applies-to-014.xht',
		'arr': ['//*[@id="div1"]', '//*[@id="black"]'],
		'num': 'test_css_6405',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/letter-spacing-applies-to-015.xht',
		'arr': ['//*[@id="row"]', '//*[@id="black"]'],
		'num': 'test_css_6406',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/letter-spacing-justify-001.xht',
		'arr': ['//*[@id="div1"]'],
		'num': 'test_css_6407',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/painting-order-underline-001.xht',
		'arr': ['*'],
		'num': 'test_css_6408',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-align-bidi-011.xht',
		'arr': ['*'],
		'num': 'test_css_6409',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-align-white-space-001.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_6410',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-align-white-space-002.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_6411',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-align-white-space-003.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_6412',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-align-white-space-004.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_6413',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-align-white-space-005.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_6414',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-align-white-space-006.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_6415',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-align-white-space-008.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_6416',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-decoration-applies-to-001.xht',
		'arr': ['*', '/html/body/div/u'],
		'num': 'test_css_6417',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-decoration-applies-to-002.xht',
		'arr': ['*', '/html/body/div/u'],
		'num': 'test_css_6418',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-decoration-applies-to-005.xht',
		'arr': ['*', '/html/body/div/u'],
		'num': 'test_css_6419',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-decoration-applies-to-006.xht',
		'arr': ['//*[@id="table"]', '*'],
		'num': 'test_css_6420',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-decoration-applies-to-007.xht',
		'arr': ['//*[@id="cell"]', '*'],
		'num': 'test_css_6421',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-decoration-applies-to-008.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_6422',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-decoration-applies-to-009.xht',
		'arr': ['//*[@id="table"]', '*'],
		'num': 'test_css_6423',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-decoration-applies-to-010.xht',
		'arr': ['//*[@id="cell"]', '*'],
		'num': 'test_css_6424',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-decoration-applies-to-011.xht',
		'arr': ['//*[@id="table"]', '*'],
		'num': 'test_css_6425',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-decoration-applies-to-014.xht',
		'arr': ['//*[@id="row"]', '*'],
		'num': 'test_css_6426',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-decoration-applies-to-015.xht',
		'arr': ['//*[@id="table"]', '*'],
		'num': 'test_css_6427',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-decoration-image-001.xht',
		'arr': ['*'],
		'num': 'test_css_6428',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-decoration-va-length-001.xht',
		'arr': ['//*[@id="up"]', '*'],
		'num': 'test_css_6429',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-decoration-va-length-002.xht',
		'arr': ['//*[@id="high"]', '*'],
		'num': 'test_css_6430',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-indent-004.xht',
		'arr': ['//*[@id="test"]'],
		'num': 'test_css_6431',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-indent-005.xht',
		'arr': ['//*[@id="test"]'],
		'num': 'test_css_6432',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-indent-006.xht',
		'arr': ['//*[@id="test"]'],
		'num': 'test_css_6433',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-indent-007.xht',
		'arr': ['//*[@id="parent"]', '*'],
		'num': 'test_css_6434',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-indent-008.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_6435',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-indent-010.xht',
		'arr': ['*'],
		'num': 'test_css_6436',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-indent-011.xht',
		'arr': ['*'],
		'num': 'test_css_6437',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-indent-012.xht',
		'arr': ['*'],
		'num': 'test_css_6438',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-indent-013.xht',
		'arr': ['*'],
		'num': 'test_css_6439',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-indent-014.xht',
		'arr': ['*'],
		'num': 'test_css_6440',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-indent-016.xht',
		'arr': ['//*[@id="test"]'],
		'num': 'test_css_6441',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-indent-017.xht',
		'arr': ['//*[@id="test"]'],
		'num': 'test_css_6442',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-indent-018.xht',
		'arr': ['//*[@id="test"]'],
		'num': 'test_css_6443',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-indent-019.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_6444',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-indent-020.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_6445',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-indent-028.xht',
		'arr': ['//*[@id="test"]'],
		'num': 'test_css_6446',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-indent-029.xht',
		'arr': ['//*[@id="test"]'],
		'num': 'test_css_6447',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-indent-030.xht',
		'arr': ['//*[@id="test"]'],
		'num': 'test_css_6448',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-indent-031.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_6449',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-indent-032.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_6450',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-indent-040.xht',
		'arr': ['//*[@id="test"]'],
		'num': 'test_css_6451',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-indent-041.xht',
		'arr': ['//*[@id="test"]'],
		'num': 'test_css_6452',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-indent-042.xht',
		'arr': ['//*[@id="test"]'],
		'num': 'test_css_6453',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-indent-043.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_6454',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-indent-044.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_6455',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-indent-052.xht',
		'arr': ['//*[@id="test"]'],
		'num': 'test_css_6456',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-indent-053.xht',
		'arr': ['//*[@id="test"]'],
		'num': 'test_css_6457',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-indent-054.xht',
		'arr': ['//*[@id="test"]'],
		'num': 'test_css_6458',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-indent-055.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_6459',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-indent-056.xht',
		'arr': ['//*[@id="parent"]', '*'],
		'num': 'test_css_6460',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-indent-064.xht',
		'arr': ['//*[@id="test"]'],
		'num': 'test_css_6461',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-indent-065.xht',
		'arr': ['//*[@id="test"]'],
		'num': 'test_css_6462',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-indent-066.xht',
		'arr': ['//*[@id="test"]'],
		'num': 'test_css_6463',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-indent-067.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_6464',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-indent-068.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_6465',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-indent-076.xht',
		'arr': ['//*[@id="test"]'],
		'num': 'test_css_6466',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-indent-077.xht',
		'arr': ['//*[@id="test"]'],
		'num': 'test_css_6467',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-indent-078.xht',
		'arr': ['//*[@id="test"]'],
		'num': 'test_css_6468',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-indent-079.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_6469',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-indent-080.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_6470',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-indent-088.xht',
		'arr': ['//*[@id="test"]'],
		'num': 'test_css_6471',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-indent-089.xht',
		'arr': ['//*[@id="test"]'],
		'num': 'test_css_6472',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-indent-090.xht',
		'arr': ['//*[@id="test"]'],
		'num': 'test_css_6473',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-indent-091.xht',
		'arr': ['//*[@id="parent"]'],
		'num': 'test_css_6474',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-indent-092.xht',
		'arr': ['//*[@id="test"]'],
		'num': 'test_css_6475',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-indent-100.xht',
		'arr': ['//*[@id="test"]'],
		'num': 'test_css_6476',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-indent-101.xht',
		'arr': ['//*[@id="test"]'],
		'num': 'test_css_6477',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-indent-102.xht',
		'arr': ['//*[@id="parent"]', '//*[@id="test"]'],
		'num': 'test_css_6478',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-indent-103.xht',
		'arr': ['//*[@id="parent"]'],
		'num': 'test_css_6479',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-indent-104.xht',
		'arr': ['//*[@id="test"]', '//*[@id="parent"]'],
		'num': 'test_css_6480',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-indent-109.xht',
		'arr': ['//*[@id="test"]'],
		'num': 'test_css_6481',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-indent-110.xht',
		'arr': ['//*[@id="test"]'],
		'num': 'test_css_6482',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-indent-111.xht',
		'arr': ['//*[@id="test"]'],
		'num': 'test_css_6483',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-indent-112.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_6484',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-indent-113-ref-margin.xht',
		'arr': ['*'],
		'num': 'test_css_6485',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-indent-113.xht',
		'arr': ['*'],
		'num': 'test_css_6486',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-indent-114-ref.xht',
		'arr': ['*'],
		'num': 'test_css_6487',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-indent-114.xht',
		'arr': ['*'],
		'num': 'test_css_6488',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-indent-115-ref-block-margin.xht',
		'arr': ['*'],
		'num': 'test_css_6489',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-indent-115-ref-inline-margin.xht',
		'arr': ['*'],
		'num': 'test_css_6490',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-indent-115.xht',
		'arr': ['*'],
		'num': 'test_css_6491',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-indent-applies-to-001.xht',
		'arr': ['//*[@id="div1"]'],
		'num': 'test_css_6492',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-indent-applies-to-002.xht',
		'arr': ['//*[@id="div1"]'],
		'num': 'test_css_6493',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-indent-applies-to-003.xht',
		'arr': ['//*[@id="div1"]'],
		'num': 'test_css_6494',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-indent-applies-to-005.xht',
		'arr': ['//*[@id="div1"]'],
		'num': 'test_css_6495',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-indent-applies-to-006.xht',
		'arr': ['//*[@id="cell"]', '//*[@id="div1"]'],
		'num': 'test_css_6496',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-indent-applies-to-007.xht',
		'arr': ['//*[@id="cell"]', '//*[@id="row"]'],
		'num': 'test_css_6497',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-indent-applies-to-008.xht',
		'arr': ['//*[@id="table"]', '//*[@id="div1"]'],
		'num': 'test_css_6498',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-indent-applies-to-009.xht',
		'arr': ['//*[@id="div1"]'],
		'num': 'test_css_6499',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-indent-applies-to-010.xht',
		'arr': ['//*[@id="test"]', '//*[@id="div1"]'],
		'num': 'test_css_6500',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-indent-applies-to-011.xht',
		'arr': ['//*[@id="table"]', '//*[@id="div1"]'],
		'num': 'test_css_6501',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-indent-applies-to-012.xht',
		'arr': ['//*[@id="test"]', '//*[@id="div1"]'],
		'num': 'test_css_6502',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-indent-applies-to-013.xht',
		'arr': ['//*[@id="test"]'],
		'num': 'test_css_6503',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-indent-applies-to-014.xht',
		'arr': ['//*[@id="row"]', '//*[@id="div1"]'],
		'num': 'test_css_6504',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-indent-applies-to-015.xht',
		'arr': ['//*[@id="caption"]', '//*[@id="div1"]'],
		'num': 'test_css_6505',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-indent-inherited-001.xht',
		'arr': ['//*[@id="div1"]'],
		'num': 'test_css_6506',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-indent-intrinsic-001.xht',
		'arr': ['*'],
		'num': 'test_css_6507',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-indent-intrinsic-002.xht',
		'arr': ['*'],
		'num': 'test_css_6508',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-indent-intrinsic-003.xht',
		'arr': ['*'],
		'num': 'test_css_6509',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-indent-intrinsic-004.xht',
		'arr': ['*'],
		'num': 'test_css_6510',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-indent-on-blank-line-rtl-left-align.html',
		'arr': ['/html/body', '/html/body/div/div[1]'],
		'num': 'test_css_6511',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-indent-overflow-001.xht',
		'arr': ['//*[@id="div1"]', '*'],
		'num': 'test_css_6512',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-indent-overflow-002.xht',
		'arr': ['//*[@id="div1"]', '//*[@id="div2"]'],
		'num': 'test_css_6513',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-indent-overflow-003.xht',
		'arr': ['//*[@id="div2"]'],
		'num': 'test_css_6514',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-indent-overflow-004.xht',
		'arr': ['*'],
		'num': 'test_css_6515',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-indent-percent-001.xht',
		'arr': ['*'],
		'num': 'test_css_6516',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-indent-rtl-001.xht',
		'arr': ['//*[@id="div1"]'],
		'num': 'test_css_6517',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-indent-rtl-002.xht',
		'arr': ['//*[@id="div3"]'],
		'num': 'test_css_6518',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-indent-wrap-001-notref-block-margin.xht',
		'arr': ['*'],
		'num': 'test_css_6519',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-indent-wrap-001-ref-float.xht',
		'arr': ['*'],
		'num': 'test_css_6520',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-indent-wrap-001-ref-inline-margin.xht',
		'arr': ['*'],
		'num': 'test_css_6521',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-indent-wrap-001.xht',
		'arr': ['*'],
		'num': 'test_css_6522',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-transform-001.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_6523',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-transform-002.xht',
		'arr': ['*'],
		'num': 'test_css_6524',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-transform-003.xht',
		'arr': ['*'],
		'num': 'test_css_6525',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-transform-004.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_6526',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-transform-005.xht',
		'arr': ['*'],
		'num': 'test_css_6527',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-transform-applies-to-001.xht',
		'arr': ['//*[@id="testDiv"]', '*'],
		'num': 'test_css_6528',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-transform-applies-to-002.xht',
		'arr': ['*', '/html/body/div'],
		'num': 'test_css_6529',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-transform-applies-to-003.xht',
		'arr': ['*'],
		'num': 'test_css_6530',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-transform-applies-to-005.xht',
		'arr': ['*', '/html/body/div'],
		'num': 'test_css_6531',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-transform-applies-to-006.xht',
		'arr': ['//*[@id="table"]', '*'],
		'num': 'test_css_6532',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-transform-applies-to-007.xht',
		'arr': ['//*[@id="row"]', '*'],
		'num': 'test_css_6533',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-transform-applies-to-008.xht',
		'arr': ['//*[@id="cell"]', '*'],
		'num': 'test_css_6534',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-transform-applies-to-009.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_6535',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-transform-applies-to-010.xht',
		'arr': ['//*[@id="table"]', '*'],
		'num': 'test_css_6536',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-transform-applies-to-011.xht',
		'arr': ['//*[@id="row"]', '*'],
		'num': 'test_css_6537',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-transform-applies-to-012.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_6538',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-transform-applies-to-013.xht',
		'arr': ['//*[@id="cell"]', '*'],
		'num': 'test_css_6539',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-transform-applies-to-014.xht',
		'arr': ['//*[@id="table"]', '*'],
		'num': 'test_css_6540',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-transform-applies-to-015.xht',
		'arr': ['//*[@id="caption"]', '*'],
		'num': 'test_css_6541',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-transform-bicameral-001.xht',
		'arr': ['*', '//*[@id="fontChange"]'],
		'num': 'test_css_6542',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-transform-bicameral-002.xht',
		'arr': ['*', '//*[@id="fontChange"]'],
		'num': 'test_css_6543',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-transform-bicameral-003.xht',
		'arr': ['//*[@id="fontChange"]'],
		'num': 'test_css_6544',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-transform-bicameral-004.xht',
		'arr': ['//*[@id="fontChange"]'],
		'num': 'test_css_6545',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-transform-bicameral-005.xht',
		'arr': ['//*[@id="fontChange"]'],
		'num': 'test_css_6546',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-transform-bicameral-006.xht',
		'arr': ['//*[@id="fontChange"]'],
		'num': 'test_css_6547',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-transform-bicameral-007.xht',
		'arr': ['//*[@id="fontChange"]'],
		'num': 'test_css_6548',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-transform-bicameral-008.xht',
		'arr': ['//*[@id="fontChange"]'],
		'num': 'test_css_6549',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-transform-bicameral-009.xht',
		'arr': ['//*[@id="fontChange"]'],
		'num': 'test_css_6550',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-transform-bicameral-010.xht',
		'arr': ['//*[@id="fontChange"]'],
		'num': 'test_css_6551',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-transform-bicameral-011.xht',
		'arr': ['//*[@id="fontChange"]'],
		'num': 'test_css_6552',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-transform-bicameral-012.xht',
		'arr': ['//*[@id="fontChange"]'],
		'num': 'test_css_6553',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-transform-bicameral-013.xht',
		'arr': ['//*[@id="fontChange"]'],
		'num': 'test_css_6554',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-transform-bicameral-014.xht',
		'arr': ['//*[@id="fontChange"]'],
		'num': 'test_css_6555',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-transform-bicameral-015.xht',
		'arr': ['//*[@id="fontChange"]'],
		'num': 'test_css_6556',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-transform-bicameral-016.xht',
		'arr': ['//*[@id="fontChange"]'],
		'num': 'test_css_6557',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-transform-bicameral-017.xht',
		'arr': ['//*[@id="fontChange"]'],
		'num': 'test_css_6558',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-transform-bicameral-018.xht',
		'arr': ['//*[@id="fontChange"]'],
		'num': 'test_css_6559',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-transform-bicameral-019.xht',
		'arr': ['//*[@id="fontChange"]'],
		'num': 'test_css_6560',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-transform-bicameral-020.xht',
		'arr': ['//*[@id="fontChange"]'],
		'num': 'test_css_6561',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-transform-bicameral-021.xht',
		'arr': ['//*[@id="fontChange"]'],
		'num': 'test_css_6562',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-transform-bicameral-022.xht',
		'arr': ['//*[@id="fontChange"]'],
		'num': 'test_css_6563',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-transform-cap-001.xht',
		'arr': ['*'],
		'num': 'test_css_6564',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-transform-cap-002.xht',
		'arr': ['*'],
		'num': 'test_css_6565',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-transform-cap-003.xht',
		'arr': ['*'],
		'num': 'test_css_6566',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-transform-lowercase-001.xht',
		'arr': ['*'],
		'num': 'test_css_6567',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-transform-unicase-001.xht',
		'arr': ['//*[@id="test"]'],
		'num': 'test_css_6568',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-transform-uppercase-001.xht',
		'arr': ['*'],
		'num': 'test_css_6569',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/text-transform-uppercase-002.xht',
		'arr': ['*'],
		'num': 'test_css_6570',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/white-space-001.xht',
		'arr': ['//*[@id="div1"]'],
		'num': 'test_css_6571',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/white-space-002.xht',
		'arr': ['//*[@id="test"]', '//*[@id="div1"]'],
		'num': 'test_css_6572',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/white-space-003.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="div2"]'],
		'num': 'test_css_6573',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/white-space-004.xht',
		'arr': ['//*[@id="reference"]'],
		'num': 'test_css_6574',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/white-space-005.xht',
		'arr': ['//*[@id="div3"]'],
		'num': 'test_css_6575',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/white-space-006.xht',
		'arr': ['//*[@id="div3"]', '//*[@id="div1"]'],
		'num': 'test_css_6576',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/white-space-007.xht',
		'arr': ['//*[@id="control"]', '//*[@id="test"]'],
		'num': 'test_css_6577',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/white-space-008.xht',
		'arr': ['//*[@id="test-overlapping-green"]'],
		'num': 'test_css_6578',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/white-space-applies-to-001.xht',
		'arr': ['//*[@id="div2"]'],
		'num': 'test_css_6579',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/white-space-applies-to-002.xht',
		'arr': ['//*[@id="div1"]', '//*[@id="reference"]'],
		'num': 'test_css_6580',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/white-space-applies-to-003.xht',
		'arr': ['//*[@id="ref1"]'],
		'num': 'test_css_6581',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/white-space-applies-to-005.xht',
		'arr': ['//*[@id="div2"]', '//*[@id="div3"]'],
		'num': 'test_css_6582',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/white-space-applies-to-006.xht',
		'arr': ['//*[@id="table"]', '//*[@id="reference"]'],
		'num': 'test_css_6583',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/white-space-applies-to-007.xht',
		'arr': ['//*[@id="row"]', '//*[@id="reference"]'],
		'num': 'test_css_6584',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/white-space-applies-to-008.xht',
		'arr': ['//*[@id="div1"]', '//*[@id="reference"]'],
		'num': 'test_css_6585',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/white-space-applies-to-009.xht',
		'arr': ['//*[@id="div2"]', '//*[@id="reference"]'],
		'num': 'test_css_6586',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/white-space-applies-to-010.xht',
		'arr': ['//*[@id="row"]', '//*[@id="reference"]'],
		'num': 'test_css_6587',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/white-space-applies-to-011.xht',
		'arr': ['//*[@id="cell"]', '//*[@id="reference"]'],
		'num': 'test_css_6588',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/white-space-applies-to-012.xht',
		'arr': ['//*[@id="cell"]', '//*[@id="div1"]'],
		'num': 'test_css_6589',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/white-space-applies-to-013.xht',
		'arr': ['//*[@id="table"]', '//*[@id="div2"]'],
		'num': 'test_css_6590',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/white-space-applies-to-014.xht',
		'arr': ['//*[@id="row"]', '//*[@id="div2"]'],
		'num': 'test_css_6591',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/white-space-applies-to-015.xht',
		'arr': ['//*[@id="caption"]', '//*[@id="div2"]'],
		'num': 'test_css_6592',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/white-space-bidirectionality-001.xht',
		'arr': ['*'],
		'num': 'test_css_6593',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/white-space-collapsing-001.xht',
		'arr': ['*'],
		'num': 'test_css_6594',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/white-space-collapsing-002.xht',
		'arr': ['*'],
		'num': 'test_css_6595',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/white-space-collapsing-003.xht',
		'arr': ['*'],
		'num': 'test_css_6596',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/white-space-collapsing-004.xht',
		'arr': ['*'],
		'num': 'test_css_6597',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/white-space-collapsing-005.xht',
		'arr': ['*'],
		'num': 'test_css_6598',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/white-space-collapsing-bidi-001.xht',
		'arr': ['*', '//*[@id="second-div"]'],
		'num': 'test_css_6599',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/white-space-collapsing-bidi-002.xht',
		'arr': ['*', '//*[@id="second-div"]'],
		'num': 'test_css_6600',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/white-space-collapsing-bidi-003.xht',
		'arr': ['*', '//*[@id="first"]'],
		'num': 'test_css_6601',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/white-space-collapsing-breaks-001.xht',
		'arr': ['*'],
		'num': 'test_css_6602',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/white-space-generated-content-before-001.xht',
		'arr': ['//*[@id="div2"]', '*'],
		'num': 'test_css_6603',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/white-space-mixed-001.xht',
		'arr': ['*'],
		'num': 'test_css_6604',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/white-space-mixed-002.xht',
		'arr': ['*'],
		'num': 'test_css_6605',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/white-space-mixed-003.xht',
		'arr': ['*'],
		'num': 'test_css_6606',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/white-space-normal-001.xht',
		'arr': ['*'],
		'num': 'test_css_6607',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/white-space-normal-002.xht',
		'arr': ['*'],
		'num': 'test_css_6608',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/white-space-normal-003.xht',
		'arr': ['*'],
		'num': 'test_css_6609',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/white-space-normal-004.xht',
		'arr': ['*'],
		'num': 'test_css_6610',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/white-space-normal-005.xht',
		'arr': ['*'],
		'num': 'test_css_6611',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/white-space-normal-006.xht',
		'arr': ['*'],
		'num': 'test_css_6612',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/white-space-normal-007.xht',
		'arr': ['*'],
		'num': 'test_css_6613',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/white-space-normal-008.xht',
		'arr': ['*'],
		'num': 'test_css_6614',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/white-space-normal-009.xht',
		'arr': ['*'],
		'num': 'test_css_6615',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/white-space-nowrap-001.xht',
		'arr': ['*'],
		'num': 'test_css_6616',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/white-space-nowrap-005.xht',
		'arr': ['*'],
		'num': 'test_css_6617',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/white-space-nowrap-006.xht',
		'arr': ['*'],
		'num': 'test_css_6618',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/white-space-nowrap-attribute-001.xht',
		'arr': ['*'],
		'num': 'test_css_6619',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/white-space-p-element-001.xht',
		'arr': ['*'],
		'num': 'test_css_6620',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/white-space-pre-001.xht',
		'arr': ['*'],
		'num': 'test_css_6621',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/white-space-pre-002.xht',
		'arr': ['*'],
		'num': 'test_css_6622',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/white-space-pre-005.xht',
		'arr': ['*'],
		'num': 'test_css_6623',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/white-space-pre-006.xht',
		'arr': ['*'],
		'num': 'test_css_6624',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/white-space-pre-element-001.xht',
		'arr': ['*'],
		'num': 'test_css_6625',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/white-space-processing-001.xht',
		'arr': ['//*[@id="div1"]'],
		'num': 'test_css_6626',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/white-space-processing-002.xht',
		'arr': ['//*[@id="div2"]'],
		'num': 'test_css_6627',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/white-space-processing-003.xht',
		'arr': ['//*[@id="div1"]', '//*[@id="div2"]'],
		'num': 'test_css_6628',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/white-space-processing-004.xht',
		'arr': ['//*[@id="div2"]', '//*[@id="div1"]'],
		'num': 'test_css_6629',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/white-space-processing-005.xht',
		'arr': ['//*[@id="div1"]'],
		'num': 'test_css_6630',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/white-space-processing-006.xht',
		'arr': ['//*[@id="div2"]'],
		'num': 'test_css_6631',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/white-space-processing-007.xht',
		'arr': ['//*[@id="div2"]', '//*[@id="div1"]'],
		'num': 'test_css_6632',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/white-space-processing-008.xht',
		'arr': ['//*[@id="div1"]', '//*[@id="div2"]'],
		'num': 'test_css_6633',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/white-space-processing-009.xht',
		'arr': ['//*[@id="div1"]'],
		'num': 'test_css_6634',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/white-space-processing-010.xht',
		'arr': ['//*[@id="div2"]'],
		'num': 'test_css_6635',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/white-space-processing-011.xht',
		'arr': ['//*[@id="div3"]'],
		'num': 'test_css_6636',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/white-space-processing-012.xht',
		'arr': ['//*[@id="div3"]', '//*[@id="div1"]'],
		'num': 'test_css_6637',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/white-space-processing-013.xht',
		'arr': ['*'],
		'num': 'test_css_6638',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/white-space-processing-014.xht',
		'arr': ['//*[@id="div1"]'],
		'num': 'test_css_6639',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/white-space-processing-015.xht',
		'arr': ['//*[@id="div1"]'],
		'num': 'test_css_6640',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/white-space-processing-016.xht',
		'arr': ['*'],
		'num': 'test_css_6641',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/white-space-processing-017.xht',
		'arr': ['*'],
		'num': 'test_css_6642',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/white-space-processing-018.xht',
		'arr': ['*'],
		'num': 'test_css_6643',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/white-space-processing-019.xht',
		'arr': ['//*[@id="div1"]'],
		'num': 'test_css_6644',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/white-space-processing-020.xht',
		'arr': ['//*[@id="div1"]', '//*[@id="div2"]'],
		'num': 'test_css_6645',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/white-space-processing-021.xht',
		'arr': ['//*[@id="div1"]', '//*[@id="div3"]'],
		'num': 'test_css_6646',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/white-space-processing-022.xht',
		'arr': ['//*[@id="div2"]', '//*[@id="div1"]'],
		'num': 'test_css_6647',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/white-space-processing-023.xht',
		'arr': ['//*[@id="span1"]', '//*[@id="div1"]'],
		'num': 'test_css_6648',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/white-space-processing-024.xht',
		'arr': ['//*[@id="span1"]', '//*[@id="div2"]'],
		'num': 'test_css_6649',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/white-space-processing-025.xht',
		'arr': ['//*[@id="span1"]', '//*[@id="div3"]'],
		'num': 'test_css_6650',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/white-space-processing-026.xht',
		'arr': ['//*[@id="span2"]', '//*[@id="div1"]'],
		'num': 'test_css_6651',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/white-space-processing-027.xht',
		'arr': ['//*[@id="span2"]', '//*[@id="div2"]'],
		'num': 'test_css_6652',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/white-space-processing-028.xht',
		'arr': ['//*[@id="span2"]', '//*[@id="div3"]'],
		'num': 'test_css_6653',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/white-space-processing-029.xht',
		'arr': ['//*[@id="div1"]', '//*[@id="div3"]'],
		'num': 'test_css_6654',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/white-space-processing-030.xht',
		'arr': ['//*[@id="div3"]', '//*[@id="div1"]'],
		'num': 'test_css_6655',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/white-space-processing-031.xht',
		'arr': ['//*[@id="div3"]', '//*[@id="div2"]'],
		'num': 'test_css_6656',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/white-space-processing-032.xht',
		'arr': ['//*[@id="div3"]'],
		'num': 'test_css_6657',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/white-space-processing-033.xht',
		'arr': ['//*[@id="span2"]', '//*[@id="div3"]'],
		'num': 'test_css_6658',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/white-space-processing-034.xht',
		'arr': ['//*[@id="div2"]'],
		'num': 'test_css_6659',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/white-space-processing-035.xht',
		'arr': ['//*[@id="span1"]', '//*[@id="div2"]'],
		'num': 'test_css_6660',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/white-space-processing-036.xht',
		'arr': ['//*[@id="span1"]', '//*[@id="div3"]'],
		'num': 'test_css_6661',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/white-space-processing-037.xht',
		'arr': ['//*[@id="div1"]', '*'],
		'num': 'test_css_6662',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/white-space-processing-038.xht',
		'arr': ['//*[@id="div2"]', '*'],
		'num': 'test_css_6663',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/white-space-processing-039.xht',
		'arr': ['//*[@id="div1"]', '*'],
		'num': 'test_css_6664',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/white-space-processing-040.xht',
		'arr': ['//*[@id="div2"]', '*'],
		'num': 'test_css_6665',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/white-space-processing-041.xht',
		'arr': ['//*[@id="div1"]', '*'],
		'num': 'test_css_6666',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/white-space-processing-042.xht',
		'arr': ['//*[@id="div1"]', '//*[@id="div2"]'],
		'num': 'test_css_6667',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/white-space-processing-043.xht',
		'arr': ['*'],
		'num': 'test_css_6668',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/white-space-processing-044.xht',
		'arr': ['*'],
		'num': 'test_css_6669',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/white-space-processing-045.xht',
		'arr': ['*'],
		'num': 'test_css_6670',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/white-space-processing-046.xht',
		'arr': ['*'],
		'num': 'test_css_6671',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/white-space-processing-047.xht',
		'arr': ['*'],
		'num': 'test_css_6672',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/white-space-processing-048.xht',
		'arr': ['//*[@id="div1"]'],
		'num': 'test_css_6673',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/white-space-processing-049.xht',
		'arr': ['//*[@id="div1"]', '*'],
		'num': 'test_css_6674',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/white-space-processing-050.xht',
		'arr': ['//*[@id="pre1"]', '//*[@id="div1"]'],
		'num': 'test_css_6675',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/white-space-processing-051.xht',
		'arr': ['//*[@id="pre2"]', '//*[@id="div2"]'],
		'num': 'test_css_6676',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/white-space-processing-052.xht',
		'arr': ['//*[@id="pre1"]'],
		'num': 'test_css_6677',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/white-space-processing-053.xht',
		'arr': ['//*[@id="pre2"]'],
		'num': 'test_css_6678',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/white-space-processing-054.xht',
		'arr': ['//*[@id="div1"]', '//*[@id="div3"]'],
		'num': 'test_css_6679',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/white-space-processing-055.xht',
		'arr': ['//*[@id="div2"]', '*'],
		'num': 'test_css_6680',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/white-space-processing-056.xht',
		'arr': ['//*[@id="div1"]', '//*[@id="div2"]'],
		'num': 'test_css_6681',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/word-spacing-004.xht',
		'arr': ['//*[@id="test"]'],
		'num': 'test_css_6682',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/word-spacing-005.xht',
		'arr': ['//*[@id="test"]'],
		'num': 'test_css_6683',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/word-spacing-006.xht',
		'arr': ['//*[@id="test"]'],
		'num': 'test_css_6684',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/word-spacing-007.xht',
		'arr': ['//*[@id="span2"]'],
		'num': 'test_css_6685',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/word-spacing-008.xht',
		'arr': ['//*[@id="span2"]', '//*[@id="span1"]'],
		'num': 'test_css_6686',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/word-spacing-016.xht',
		'arr': ['//*[@id="test"]'],
		'num': 'test_css_6687',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/word-spacing-017.xht',
		'arr': ['//*[@id="test"]'],
		'num': 'test_css_6688',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/word-spacing-018.xht',
		'arr': ['//*[@id="test"]'],
		'num': 'test_css_6689',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/word-spacing-019.xht',
		'arr': ['//*[@id="span2"]'],
		'num': 'test_css_6690',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/word-spacing-020.xht',
		'arr': ['//*[@id="span2"]', '//*[@id="span1"]'],
		'num': 'test_css_6691',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/word-spacing-028.xht',
		'arr': ['//*[@id="test"]'],
		'num': 'test_css_6692',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/word-spacing-029.xht',
		'arr': ['//*[@id="test"]'],
		'num': 'test_css_6693',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/word-spacing-030.xht',
		'arr': ['//*[@id="test"]'],
		'num': 'test_css_6694',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/word-spacing-031.xht',
		'arr': ['//*[@id="span2"]'],
		'num': 'test_css_6695',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/word-spacing-032.xht',
		'arr': ['//*[@id="span2"]', '//*[@id="span1"]'],
		'num': 'test_css_6696',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/word-spacing-040.xht',
		'arr': ['//*[@id="test"]'],
		'num': 'test_css_6697',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/word-spacing-041.xht',
		'arr': ['//*[@id="test"]'],
		'num': 'test_css_6698',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/word-spacing-042.xht',
		'arr': ['//*[@id="test"]'],
		'num': 'test_css_6699',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/word-spacing-043.xht',
		'arr': ['//*[@id="test"]', '//*[@id="span1"]'],
		'num': 'test_css_6700',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/word-spacing-044.xht',
		'arr': ['//*[@id="wrapper"]'],
		'num': 'test_css_6701',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/word-spacing-052.xht',
		'arr': ['//*[@id="test"]'],
		'num': 'test_css_6702',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/word-spacing-053.xht',
		'arr': ['//*[@id="test"]'],
		'num': 'test_css_6703',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/word-spacing-054.xht',
		'arr': ['//*[@id="test"]'],
		'num': 'test_css_6704',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/word-spacing-055.xht',
		'arr': ['//*[@id="span2"]', '//*[@id="span1"]'],
		'num': 'test_css_6705',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/word-spacing-056.xht',
		'arr': ['//*[@id="span2"]', '//*[@id="wrapper"]'],
		'num': 'test_css_6706',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/word-spacing-064.xht',
		'arr': ['//*[@id="test"]'],
		'num': 'test_css_6707',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/word-spacing-065.xht',
		'arr': ['//*[@id="test"]'],
		'num': 'test_css_6708',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/word-spacing-066.xht',
		'arr': ['//*[@id="test"]'],
		'num': 'test_css_6709',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/word-spacing-067.xht',
		'arr': ['//*[@id="wrapper"]', '//*[@id="span2"]'],
		'num': 'test_css_6710',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/word-spacing-068.xht',
		'arr': ['//*[@id="span2"]', '//*[@id="span1"]'],
		'num': 'test_css_6711',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/word-spacing-076.xht',
		'arr': ['//*[@id="test"]'],
		'num': 'test_css_6712',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/word-spacing-077.xht',
		'arr': ['//*[@id="test"]'],
		'num': 'test_css_6713',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/word-spacing-078.xht',
		'arr': ['//*[@id="test"]'],
		'num': 'test_css_6714',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/word-spacing-079.xht',
		'arr': ['//*[@id="span2"]', '//*[@id="span1"]'],
		'num': 'test_css_6715',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/word-spacing-080.xht',
		'arr': ['//*[@id="span2"]'],
		'num': 'test_css_6716',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/word-spacing-088.xht',
		'arr': ['//*[@id="test"]'],
		'num': 'test_css_6717',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/word-spacing-089.xht',
		'arr': ['//*[@id="test"]'],
		'num': 'test_css_6718',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/word-spacing-090.xht',
		'arr': ['//*[@id="test"]'],
		'num': 'test_css_6719',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/word-spacing-091.xht',
		'arr': ['//*[@id="test"]', '//*[@id="span1"]'],
		'num': 'test_css_6720',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/word-spacing-092.xht',
		'arr': ['//*[@id="test"]', '//*[@id="span2"]'],
		'num': 'test_css_6721',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/word-spacing-097.xht',
		'arr': ['//*[@id="wrapper"]', '//*[@id="test"]'],
		'num': 'test_css_6722',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/word-spacing-098.xht',
		'arr': ['//*[@id="test"]'],
		'num': 'test_css_6723',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/word-spacing-099.xht',
		'arr': ['//*[@id="wrapper"]', '//*[@id="test"]'],
		'num': 'test_css_6724',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/word-spacing-100.xht',
		'arr': ['//*[@id="test"]'],
		'num': 'test_css_6725',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/word-spacing-101.xht',
		'arr': ['//*[@id="parent"]', '//*[@id="span1"]'],
		'num': 'test_css_6726',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/word-spacing-applies-to-001.xht',
		'arr': ['//*[@id="div1"]'],
		'num': 'test_css_6727',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/word-spacing-applies-to-002.xht',
		'arr': ['//*[@id="div1"]'],
		'num': 'test_css_6728',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/word-spacing-applies-to-003.xht',
		'arr': ['//*[@id="div2"]'],
		'num': 'test_css_6729',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/word-spacing-applies-to-005.xht',
		'arr': ['//*[@id="div1"]'],
		'num': 'test_css_6730',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/word-spacing-applies-to-006.xht',
		'arr': ['//*[@id="row"]', '//*[@id="div1"]'],
		'num': 'test_css_6731',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/word-spacing-applies-to-007.xht',
		'arr': ['//*[@id="row"]'],
		'num': 'test_css_6732',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/word-spacing-applies-to-008.xht',
		'arr': ['//*[@id="cell"]', '//*[@id="div1"]'],
		'num': 'test_css_6733',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/word-spacing-applies-to-009.xht',
		'arr': ['//*[@id="table"]', '//*[@id="div1"]'],
		'num': 'test_css_6734',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/word-spacing-applies-to-010.xht',
		'arr': ['//*[@id="row"]', '//*[@id="div1"]'],
		'num': 'test_css_6735',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/word-spacing-applies-to-011.xht',
		'arr': ['//*[@id="div1"]'],
		'num': 'test_css_6736',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/word-spacing-applies-to-012.xht',
		'arr': ['//*[@id="table"]'],
		'num': 'test_css_6737',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/word-spacing-applies-to-013.xht',
		'arr': ['//*[@id="row"]'],
		'num': 'test_css_6738',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/word-spacing-applies-to-014.xht',
		'arr': ['//*[@id="test"]', '//*[@id="div1"]'],
		'num': 'test_css_6739',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/word-spacing-applies-to-015.xht',
		'arr': ['//*[@id="caption"]', '//*[@id="div1"]'],
		'num': 'test_css_6740',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/word-spacing-characters-001.xht',
		'arr': ['*'],
		'num': 'test_css_6741',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/word-spacing-characters-002.xht',
		'arr': ['*'],
		'num': 'test_css_6742',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/word-spacing-characters-003.xht',
		'arr': ['*'],
		'num': 'test_css_6743',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/word-spacing-justify-001.xht',
		'arr': ['*'],
		'num': 'test_css_6744',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/word-spacing-remove-space-001.xht',
		'arr': ['//*[@id="div1"]'],
		'num': 'test_css_6745',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/word-spacing-remove-space-002.xht',
		'arr': ['//*[@id="div2"]'],
		'num': 'test_css_6746',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/word-spacing-remove-space-003.xht',
		'arr': ['//*[@id="div3"]'],
		'num': 'test_css_6747',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/word-spacing-remove-space-004.xht',
		'arr': ['//*[@id="div1"]', '//*[@id="div2"]'],
		'num': 'test_css_6748',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/word-spacing-remove-space-005.xht',
		'arr': ['//*[@id="div1"]', '//*[@id="div3"]'],
		'num': 'test_css_6749',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/text/word-spacing-remove-space-006.xht',
		'arr': ['//*[@id="div2"]', '//*[@id="div1"]'],
		'num': 'test_css_6750',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/ui/outline-applies-to-005.xht',
		'arr': ['//*[@id="table"]', '*'],
		'num': 'test_css_6751',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/ui/outline-applies-to-006.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_6752',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/ui/outline-applies-to-016.xht',
		'arr': ['//*[@id="table"]'],
		'num': 'test_css_6753',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/ui/outline-applies-to-017.xht',
		'arr': ['//*[@id="table"]', '//*[@id="test"]'],
		'num': 'test_css_6754',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/ui/outline-color-001.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_6755',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/ui/outline-color-002.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_6756',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/ui/outline-color-007.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_6757',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/ui/outline-color-008.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_6758',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/ui/outline-color-013.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_6759',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/ui/outline-color-018.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_6760',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/ui/outline-color-023.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_6761',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/ui/outline-color-024.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_6762',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/ui/outline-color-025.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_6763',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/ui/outline-color-030.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_6764',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/ui/outline-color-031.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_6765',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/ui/outline-color-036.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_6766',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/ui/outline-color-041.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_6767',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/ui/outline-color-046.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_6768',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/ui/outline-color-047.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_6769',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/ui/outline-color-048.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_6770',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/ui/outline-color-049.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_6771',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/ui/outline-color-050.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_6772',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/ui/outline-color-051.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_6773',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/ui/outline-color-052.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_6774',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/ui/outline-color-053.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_6775',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/ui/outline-color-054.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_6776',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/ui/outline-color-058.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_6777',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/ui/outline-color-059.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_6778',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/ui/outline-color-061.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_6779',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/ui/outline-color-062.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_6780',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/ui/outline-color-069.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_6781',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/ui/outline-color-070.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_6782',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/ui/outline-color-071.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_6783',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/ui/outline-color-072.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_6784',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/ui/outline-color-073.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_6785',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/ui/outline-color-074.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_6786',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/ui/outline-color-075.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_6787',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/ui/outline-color-079.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_6788',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/ui/outline-color-081.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_6789',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/ui/outline-color-082.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_6790',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/ui/outline-color-089.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_6791',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/ui/outline-color-090.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_6792',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/ui/outline-color-091.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_6793',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/ui/outline-color-092.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_6794',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/ui/outline-color-093.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_6795',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/ui/outline-color-094.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_6796',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/ui/outline-color-095.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_6797',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/ui/outline-color-099.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_6798',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/ui/outline-color-101.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_6799',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/ui/outline-color-102.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_6800',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/ui/outline-color-109.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_6801',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/ui/outline-color-110.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_6802',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/ui/outline-color-111.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_6803',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/ui/outline-color-112.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_6804',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/ui/outline-color-113.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_6805',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/ui/outline-color-114.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_6806',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/ui/outline-color-115.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_6807',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/ui/outline-color-119.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_6808',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/ui/outline-color-121.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_6809',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/ui/outline-color-122.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_6810',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/ui/outline-color-130.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_6811',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/ui/outline-color-applies-to-005.xht',
		'arr': ['//*[@id="table"]', '*'],
		'num': 'test_css_6812',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/ui/outline-color-applies-to-006.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_6813',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/ui/outline-style-001.xht',
		'arr': ['*'],
		'num': 'test_css_6814',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/ui/outline-style-applies-to-005.xht',
		'arr': ['//*[@id="row"]', '*'],
		'num': 'test_css_6815',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/ui/outline-style-applies-to-006.xht',
		'arr': ['//*[@id="cell"]', '*'],
		'num': 'test_css_6816',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/ui/outline-width-002.xht',
		'arr': ['*'],
		'num': 'test_css_6817',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/ui/outline-width-004.xht',
		'arr': ['*'],
		'num': 'test_css_6818',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/ui/outline-width-005.xht',
		'arr': ['*'],
		'num': 'test_css_6819',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/ui/outline-width-013.xht',
		'arr': ['*'],
		'num': 'test_css_6820',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/ui/outline-width-015.xht',
		'arr': ['*'],
		'num': 'test_css_6821',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/ui/outline-width-016.xht',
		'arr': ['*'],
		'num': 'test_css_6822',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/ui/outline-width-024.xht',
		'arr': ['*'],
		'num': 'test_css_6823',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/ui/outline-width-026.xht',
		'arr': ['*'],
		'num': 'test_css_6824',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/ui/outline-width-027.xht',
		'arr': ['*'],
		'num': 'test_css_6825',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/ui/outline-width-035.xht',
		'arr': ['*'],
		'num': 'test_css_6826',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/ui/outline-width-037.xht',
		'arr': ['*'],
		'num': 'test_css_6827',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/ui/outline-width-038.xht',
		'arr': ['*'],
		'num': 'test_css_6828',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/ui/outline-width-046.xht',
		'arr': ['*'],
		'num': 'test_css_6829',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/ui/outline-width-048.xht',
		'arr': ['*'],
		'num': 'test_css_6830',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/ui/outline-width-049.xht',
		'arr': ['*'],
		'num': 'test_css_6831',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/ui/outline-width-057.xht',
		'arr': ['*'],
		'num': 'test_css_6832',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/ui/outline-width-059.xht',
		'arr': ['*'],
		'num': 'test_css_6833',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/ui/outline-width-060.xht',
		'arr': ['*'],
		'num': 'test_css_6834',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/ui/outline-width-068.xht',
		'arr': ['*'],
		'num': 'test_css_6835',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/ui/outline-width-070.xht',
		'arr': ['*'],
		'num': 'test_css_6836',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/ui/outline-width-071.xht',
		'arr': ['*'],
		'num': 'test_css_6837',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/ui/outline-width-079.xht',
		'arr': ['*'],
		'num': 'test_css_6838',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/ui/outline-width-081.xht',
		'arr': ['*'],
		'num': 'test_css_6839',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/ui/outline-width-082.xht',
		'arr': ['*'],
		'num': 'test_css_6840',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/ui/outline-width-089.xht',
		'arr': ['*'],
		'num': 'test_css_6841',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/ui/outline-width-090.xht',
		'arr': ['*'],
		'num': 'test_css_6842',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/ui/outline-width-091.xht',
		'arr': ['*'],
		'num': 'test_css_6843',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/ui/outline-width-096.xht',
		'arr': ['//*[@id="child"]', '*'],
		'num': 'test_css_6844',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/ui/outline-width-applies-to-005.xht',
		'arr': ['//*[@id="table"]', '*'],
		'num': 'test_css_6845',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/ui/outline-width-applies-to-006.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_6846',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/ui/overflow-applies-to-001.xht',
		'arr': ['//*[@id="cell"]', '*'],
		'num': 'test_css_6847',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/ui/overflow-applies-to-002.xht',
		'arr': ['//*[@id="row"]', '*'],
		'num': 'test_css_6848',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/ui/overflow-applies-to-003.xht',
		'arr': ['//*[@id="table"]', '*'],
		'num': 'test_css_6849',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/ui/overflow-applies-to-004.xht',
		'arr': ['//*[@id="row"]', '*'],
		'num': 'test_css_6850',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/ui/overflow-applies-to-005.xht',
		'arr': ['//*[@id="cell"]', '*'],
		'num': 'test_css_6851',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/ui/overflow-applies-to-006.xht',
		'arr': ['//*[@id="table"]', '*'],
		'num': 'test_css_6852',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/ui/overflow-applies-to-007.xht',
		'arr': ['//*[@id="row"]', '*'],
		'num': 'test_css_6853',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/ui/overflow-applies-to-008.xht',
		'arr': ['//*[@id="parent"]', '*'],
		'num': 'test_css_6854',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/ui/overflow-applies-to-009.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_6855',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/ui/overflow-applies-to-012.xht',
		'arr': ['//*[@id="span2"]', '*'],
		'num': 'test_css_6856',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/ui/overflow-applies-to-013.xht',
		'arr': ['//*[@id="table"]', '*'],
		'num': 'test_css_6857',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/ui/overflow-applies-to-014.xht',
		'arr': ['//*[@id="row"]', '*'],
		'num': 'test_css_6858',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/ui/overflow-applies-to-015.xht',
		'arr': ['//*[@id="span2"]', '*'],
		'num': 'test_css_6859',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/values/color-000.xht',
		'arr': ['//*[@id="numnumpercent"]', '*'],
		'num': 'test_css_6860',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/values/numbers-units-001.xht',
		'arr': ['*'],
		'num': 'test_css_6861',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/values/numbers-units-003.xht',
		'arr': ['*'],
		'num': 'test_css_6862',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/values/numbers-units-004.xht',
		'arr': ['*'],
		'num': 'test_css_6863',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/values/numbers-units-005.xht',
		'arr': ['*'],
		'num': 'test_css_6864',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/values/numbers-units-006.xht',
		'arr': ['*'],
		'num': 'test_css_6865',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/values/numbers-units-007.xht',
		'arr': ['//*[@id="div1"]', '*'],
		'num': 'test_css_6866',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/values/numbers-units-009.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_6867',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/values/numbers-units-010.xht',
		'arr': ['//*[@id="div1"]', '*'],
		'num': 'test_css_6868',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/values/numbers-units-011.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_6869',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/values/numbers-units-012.xht',
		'arr': ['//*[@id="parent"]', '*'],
		'num': 'test_css_6870',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/values/numbers-units-013.xht',
		'arr': ['//*[@id="div1"]', '*'],
		'num': 'test_css_6871',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/values/numbers-units-015.xht',
		'arr': ['//*[@id="test"]'],
		'num': 'test_css_6872',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/values/numbers-units-016.xht',
		'arr': ['*'],
		'num': 'test_css_6873',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/values/numbers-units-017.xht',
		'arr': ['*'],
		'num': 'test_css_6874',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/values/numbers-units-018.xht',
		'arr': ['//*[@id="div1"]'],
		'num': 'test_css_6875',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/values/numbers-units-019.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_6876',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/values/numbers-units-021.xht',
		'arr': ['//*[@id="div1"]', '*'],
		'num': 'test_css_6877',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/values/units-001.xht',
		'arr': ['*'],
		'num': 'test_css_6878',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/values/units-002.xht',
		'arr': ['*'],
		'num': 'test_css_6879',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/values/units-003.xht',
		'arr': ['*'],
		'num': 'test_css_6880',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/values/units-004.xht',
		'arr': ['*'],
		'num': 'test_css_6881',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/values/units-005.xht',
		'arr': ['*'],
		'num': 'test_css_6882',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/values/units-006.xht',
		'arr': ['*'],
		'num': 'test_css_6883',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/values/units-008.xht',
		'arr': ['*'],
		'num': 'test_css_6884',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/values/units-009.xht',
		'arr': ['*'],
		'num': 'test_css_6885',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/visudet/content-height-001.html',
		'arr': ['/html/body/div[3]/span', '*'],
		'num': 'test_css_6886',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/visudet/content-height-002.html',
		'arr': ['/html/body/div[1]/span', '*'],
		'num': 'test_css_6887',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/visudet/content-height-003.html',
		'arr': ['/html/body/div[2]/span', '*'],
		'num': 'test_css_6888',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/visudet/content-height-004.html',
		'arr': ['/html/body/aside/div[4]/span', '*'],
		'num': 'test_css_6889',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/visudet/content-height-005.html',
		'arr': ['/html/body', '/html/body/div/span'],
		'num': 'test_css_6890',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/visudet/height-applies-to-010a.xht',
		'arr': ['//*[@id="heightless"]', '*'],
		'num': 'test_css_6891',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/visudet/height-computed-001.xht',
		'arr': ['//*[@id="container"]'],
		'num': 'test_css_6892',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/visudet/height-computed-002.xht',
		'arr': ['//*[@id="child1"]'],
		'num': 'test_css_6893',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/visudet/height-percentage-003a.xht',
		'arr': ['*'],
		'num': 'test_css_6894',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/visudet/height-percentage-004.xht',
		'arr': ['//*[@id="container"]'],
		'num': 'test_css_6895',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/visudet/inline-block-baseline-001.xht',
		'arr': ['*'],
		'num': 'test_css_6896',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/visudet/inline-block-baseline-002.xht',
		'arr': ['*'],
		'num': 'test_css_6897',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/visudet/inline-block-baseline-003.xht',
		'arr': ['*'],
		'num': 'test_css_6898',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/visudet/inline-block-baseline-004.xht',
		'arr': ['*'],
		'num': 'test_css_6899',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/visudet/inline-block-baseline-005.xht',
		'arr': ['*'],
		'num': 'test_css_6900',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/visudet/inline-block-baseline-006.xht',
		'arr': ['*'],
		'num': 'test_css_6901',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/visudet/inline-block-baseline-010.xht',
		'arr': ['*'],
		'num': 'test_css_6902',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/visudet/inline-block-baseline-011.xht',
		'arr': ['*'],
		'num': 'test_css_6903',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/visudet/inline-block-baseline-012.xht',
		'arr': ['*'],
		'num': 'test_css_6904',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/visudet/inline-block-baseline-013.xht',
		'arr': ['*'],
		'num': 'test_css_6905',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/visudet/inline-block-baseline-014.xht',
		'arr': ['*'],
		'num': 'test_css_6906',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/visudet/line-height-201.html',
		'arr': ['//*[@id="red"]', '*'],
		'num': 'test_css_6907',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/visudet/line-height-202.html',
		'arr': ['//*[@id="hd"]', '*'],
		'num': 'test_css_6908',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/visudet/line-height-203.html',
		'arr': ['//*[@id="d"]', '*'],
		'num': 'test_css_6909',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/visudet/line-height-204.html',
		'arr': ['//*[@id="lh-manual"]', '*'],
		'num': 'test_css_6910',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/visudet/line-height-205.html',
		'arr': ['/html/body/div[2]/span[1]', '/html/body/p/strong'],
		'num': 'test_css_6911',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/visudet/line-height-206.html',
		'arr': ['/html/body/div[1]', '/html/body/div'],
		'num': 'test_css_6912',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/visudet/replaced-elements-all-auto.html',
		'arr': ['/html/body/div/img[4]', '/html/body/div/span[2]'],
		'num': 'test_css_6913',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/visudet/replaced-elements-height-20.html',
		'arr': ['/html/body/div/img[1]', '/html/body/div/span[3]'],
		'num': 'test_css_6914',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/visudet/replaced-elements-max-height-20.html',
		'arr': ['/html/body/div/img[6]', '/html/body/div/span[6]'],
		'num': 'test_css_6915',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/visudet/replaced-elements-max-width-40.html',
		'arr': ['/html/body/div/img[5]', '/html/body/div/span[5]'],
		'num': 'test_css_6916',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/visudet/replaced-elements-min-height-20.html',
		'arr': ['/html/body/div/img[4]', '/html/body/div/span[4]'],
		'num': 'test_css_6917',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/visudet/replaced-elements-min-height-40.html',
		'arr': ['/html/body/div/img[3]', '/html/body/div/span[3]'],
		'num': 'test_css_6918',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/visudet/replaced-elements-min-width-40.html',
		'arr': ['/html/body/div/img[2]', '/html/body/div/span[2]'],
		'num': 'test_css_6919',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/visudet/replaced-elements-min-width-80.html',
		'arr': ['/html/body/div/img[1]', '/html/body/div/span[1]'],
		'num': 'test_css_6920',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/visudet/replaced-elements-width-40.html',
		'arr': ['/html/body', '/html/body/div/span[4]'],
		'num': 'test_css_6921',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/visufx/clip-001.xht',
		'arr': ['//*[@id="red-overlapped-layer"]', '*'],
		'num': 'test_css_6922',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/visufx/clip-004.xht',
		'arr': ['*'],
		'num': 'test_css_6923',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/visufx/clip-005.xht',
		'arr': ['*'],
		'num': 'test_css_6924',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/visufx/clip-006.xht',
		'arr': ['*'],
		'num': 'test_css_6925',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/visufx/clip-007.xht',
		'arr': ['*'],
		'num': 'test_css_6926',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/visufx/clip-008.xht',
		'arr': ['*'],
		'num': 'test_css_6927',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/visufx/clip-016.xht',
		'arr': ['*'],
		'num': 'test_css_6928',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/visufx/clip-017.xht',
		'arr': ['*'],
		'num': 'test_css_6929',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/visufx/clip-018.xht',
		'arr': ['*'],
		'num': 'test_css_6930',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/visufx/clip-019.xht',
		'arr': ['*'],
		'num': 'test_css_6931',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/visufx/clip-020.xht',
		'arr': ['*'],
		'num': 'test_css_6932',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/visufx/clip-028.xht',
		'arr': ['*'],
		'num': 'test_css_6933',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/visufx/clip-029.xht',
		'arr': ['*'],
		'num': 'test_css_6934',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/visufx/clip-030.xht',
		'arr': ['*'],
		'num': 'test_css_6935',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/visufx/clip-031.xht',
		'arr': ['*'],
		'num': 'test_css_6936',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/visufx/clip-032.xht',
		'arr': ['*'],
		'num': 'test_css_6937',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/visufx/clip-040.xht',
		'arr': ['*'],
		'num': 'test_css_6938',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/visufx/clip-041.xht',
		'arr': ['*'],
		'num': 'test_css_6939',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/visufx/clip-042.xht',
		'arr': ['*'],
		'num': 'test_css_6940',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/visufx/clip-043.xht',
		'arr': ['*'],
		'num': 'test_css_6941',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/visufx/clip-044.xht',
		'arr': ['*'],
		'num': 'test_css_6942',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/visufx/clip-052.xht',
		'arr': ['*'],
		'num': 'test_css_6943',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/visufx/clip-053.xht',
		'arr': ['*'],
		'num': 'test_css_6944',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/visufx/clip-054.xht',
		'arr': ['*'],
		'num': 'test_css_6945',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/visufx/clip-055.xht',
		'arr': ['*'],
		'num': 'test_css_6946',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/visufx/clip-056.xht',
		'arr': ['*'],
		'num': 'test_css_6947',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/visufx/clip-064.xht',
		'arr': ['*'],
		'num': 'test_css_6948',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/visufx/clip-065.xht',
		'arr': ['*'],
		'num': 'test_css_6949',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/visufx/clip-066.xht',
		'arr': ['*'],
		'num': 'test_css_6950',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/visufx/clip-067.xht',
		'arr': ['*'],
		'num': 'test_css_6951',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/visufx/clip-068.xht',
		'arr': ['*'],
		'num': 'test_css_6952',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/visufx/clip-076.xht',
		'arr': ['*'],
		'num': 'test_css_6953',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/visufx/clip-077.xht',
		'arr': ['*'],
		'num': 'test_css_6954',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/visufx/clip-078.xht',
		'arr': ['*'],
		'num': 'test_css_6955',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/visufx/clip-079.xht',
		'arr': ['*'],
		'num': 'test_css_6956',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/visufx/clip-080.xht',
		'arr': ['*'],
		'num': 'test_css_6957',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/visufx/clip-088.xht',
		'arr': ['*'],
		'num': 'test_css_6958',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/visufx/clip-089.xht',
		'arr': ['*'],
		'num': 'test_css_6959',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/visufx/clip-090.xht',
		'arr': ['*'],
		'num': 'test_css_6960',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/visufx/clip-091.xht',
		'arr': ['*'],
		'num': 'test_css_6961',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/visufx/clip-092.xht',
		'arr': ['*'],
		'num': 'test_css_6962',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/visufx/clip-097.xht',
		'arr': ['*'],
		'num': 'test_css_6963',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/visufx/clip-098.xht',
		'arr': ['*'],
		'num': 'test_css_6964',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/visufx/clip-099.xht',
		'arr': ['*'],
		'num': 'test_css_6965',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/visufx/clip-102.xht',
		'arr': ['//*[@id="div1"]', '*'],
		'num': 'test_css_6966',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/visufx/overflow-applies-to-001.xht',
		'arr': ['//*[@id="child1"]'],
		'num': 'test_css_6967',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/visufx/overflow-propagation-001a.html',
		'arr': ['/html/body'],
		'num': 'test_css_6968',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/visufx/overflow-propagation-001b.html',
		'arr': ['/html/body'],
		'num': 'test_css_6969',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/visufx/overflow-propagation-001c.html',
		'arr': ['/html/body'],
		'num': 'test_css_6970',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/visufx/visibility-005.xht',
		'arr': ['//*[@id="testpassed"]', '*'],
		'num': 'test_css_6971',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/visufx/visibility-block-001.xht',
		'arr': ['*'],
		'num': 'test_css_6972',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/visuren/anonymous-boxes-001a.xht',
		'arr': ['//*[@id="overlapped-red"]', '*'],
		'num': 'test_css_6973',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/visuren/anonymous-boxes-001b.xht',
		'arr': ['//*[@id="closest-non-anonymous-ancestor"]', '*'],
		'num': 'test_css_6974',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/visuren/box-offsets-rel-pos-002.xht',
		'arr': ['*'],
		'num': 'test_css_6975',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/visuren/clear-applies-to-016.xht',
		'arr': ['//*[@id="table"]', '*'],
		'num': 'test_css_6976',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/visuren/clear-applies-to-017.xht',
		'arr': ['//*[@id="caption"]', '*'],
		'num': 'test_css_6977',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/visuren/emptyspan-1.html',
		'arr': ['/html/body', '/html/body/span[1]'],
		'num': 'test_css_6978',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/visuren/emptyspan-2.html',
		'arr': ['/html/body', '/html/body/span[2]'],
		'num': 'test_css_6979',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/visuren/emptyspan-3.html',
		'arr': ['/html/body', '/html/body/span'],
		'num': 'test_css_6980',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/visuren/emptyspan-4.html',
		'arr': ['/html/body', '/html/body/span[2]'],
		'num': 'test_css_6981',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/visuren/fixed-pos-stacking-001.xht',
		'arr': ['//*[@id="absolute"]'],
		'num': 'test_css_6982',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/visuren/float-inside-inline-between-blocks-1.html',
		'arr': ['/html/body/span/span[1]', '*'],
		'num': 'test_css_6983',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/visuren/inherit-static-offset-001.xht',
		'arr': ['//*[@id="child"]', '*'],
		'num': 'test_css_6984',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/visuren/inherit-static-offset-002.xht',
		'arr': ['//*[@id="parent"]', '*'],
		'num': 'test_css_6985',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/visuren/inherit-static-offset-003.xht',
		'arr': ['//*[@id="child"]', '*'],
		'num': 'test_css_6986',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/visuren/inline-formatting-context-001.xht',
		'arr': ['//*[@id="block"]'],
		'num': 'test_css_6987',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/visuren/left-offset-position-fixed-001.xht',
		'arr': ['//*[@id="shifted-column"]', '//*[@id="greensquare"]'],
		'num': 'test_css_6988',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/visuren/percent-height-1.html',
		'arr': ['/html/body/span/span', '*'],
		'num': 'test_css_6989',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/visuren/position-absolute-008a.xht',
		'arr': ['//*[@id="rel-pos-container"]', '*'],
		'num': 'test_css_6990',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/visuren/position-absolute-percentage-inherit-001.xht',
		'arr': ['//*[@id="abs-pos-child-red"]', '*'],
		'num': 'test_css_6991',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/visuren/remove-from-split-inline-1-ref.html',
		'arr': ['/html/body', '//*[@id="start"]'],
		'num': 'test_css_6992',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/visuren/remove-from-split-inline-1.html',
		'arr': ['/html/body', '/html/body/span/div'],
		'num': 'test_css_6993',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/visuren/remove-from-split-inline-2.html',
		'arr': ['/html/body', '/html/body/span'],
		'num': 'test_css_6994',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/visuren/remove-from-split-inline-3-ref.html',
		'arr': ['/html/body', '//*[@id="tail"]'],
		'num': 'test_css_6995',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/visuren/remove-from-split-inline-3.html',
		'arr': ['/html/body', '/html/body/span/div'],
		'num': 'test_css_6996',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/visuren/remove-from-split-inline-4-ref.html',
		'arr': ['/html/body', '//*[@id="four"]'],
		'num': 'test_css_6997',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/visuren/remove-from-split-inline-4.html',
		'arr': ['/html/body', '/html/body/span/div'],
		'num': 'test_css_6998',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/visuren/remove-from-split-inline-5-ref.html',
		'arr': ['/html/body', '//*[@id="one"]'],
		'num': 'test_css_6999',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/visuren/remove-from-split-inline-5.html',
		'arr': ['/html/body', '/html/body/span/div'],
		'num': 'test_css_7000',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/abspos/abspos-containing-block-initial-001.xht',
		'arr': ['*'],
		'num': 'test_css_001',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/abspos/abspos-containing-block-initial-004a.xht',
		'arr': ['*'],
		'num': 'test_css_002',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/abspos/abspos-containing-block-initial-004b.xht',
		'arr': ['*'],
		'num': 'test_css_003',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/abspos/abspos-containing-block-initial-004c.xht',
		'arr': ['*'],
		'num': 'test_css_004',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/abspos/abspos-containing-block-initial-004d.xht',
		'arr': ['*'],
		'num': 'test_css_005',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/abspos/abspos-containing-block-initial-004e.xht',
		'arr': ['*'],
		'num': 'test_css_006',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/abspos/abspos-containing-block-initial-004f.xht',
		'arr': ['*'],
		'num': 'test_css_007',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/abspos/abspos-containing-block-initial-005a.xht',
		'arr': ['*'],
		'num': 'test_css_008',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/abspos/abspos-containing-block-initial-005b.xht',
		'arr': ['*'],
		'num': 'test_css_009',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/abspos/abspos-containing-block-initial-005c.xht',
		'arr': ['*'],
		'num': 'test_css_010',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/abspos/abspos-containing-block-initial-005d.xht',
		'arr': ['*'],
		'num': 'test_css_011',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/abspos/abspos-containing-block-initial-007.xht',
		'arr': ['*'],
		'num': 'test_css_012',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/abspos/abspos-containing-block-initial-009a.xht',
		'arr': ['*'],
		'num': 'test_css_013',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/abspos/abspos-containing-block-initial-009b.xht',
		'arr': ['*'],
		'num': 'test_css_014',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/abspos/abspos-containing-block-initial-009e.xht',
		'arr': ['*'],
		'num': 'test_css_015',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/abspos/abspos-containing-block-initial-009f.xht',
		'arr': ['*'],
		'num': 'test_css_016',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/abspos/between-float-and-text.html',
		'arr': ['/html/body/div/div[2]', '/html/body/div'],
		'num': 'test_css_017',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/abspos/hypothetical-box-dynamic.html',
		'arr': ['/html/body/div[2]/span'],
		'num': 'test_css_018',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/abspos/hypothetical-inline-alone-on-second-line.html',
		'arr': ['/html/body/span', '/html/body/div'],
		'num': 'test_css_019',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/abspos/remove-block-between-inline-and-abspos.html',
		'arr': ['/html/body/div'],
		'num': 'test_css_020',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/abspos/static-inside-table-cell.html',
		'arr': ['//*[@id="container"]/div[2]/div[1]', '*'],
		'num': 'test_css_021',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/abspos/table-caption-is-containing-block-001.html',
		'arr': ['//*[@id="redSquare"]', '*'],
		'num': 'test_css_022',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/abspos/table-caption-passes-abspos-up-001.html',
		'arr': ['//*[@id="redSquare"]', '*'],
		'num': 'test_css_023',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-001.xht',
		'arr': ['*'],
		'num': 'test_css_024',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-002.xht',
		'arr': ['*'],
		'num': 'test_css_025',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-003.xht',
		'arr': ['*'],
		'num': 'test_css_026',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-004.xht',
		'arr': ['*'],
		'num': 'test_css_027',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-005.xht',
		'arr': ['*'],
		'num': 'test_css_028',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-006.xht',
		'arr': ['*'],
		'num': 'test_css_029',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-007.xht',
		'arr': ['*'],
		'num': 'test_css_030',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-008.xht',
		'arr': ['*'],
		'num': 'test_css_031',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-009.xht',
		'arr': ['*'],
		'num': 'test_css_032',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-010.xht',
		'arr': ['*'],
		'num': 'test_css_033',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-014.xht',
		'arr': ['*'],
		'num': 'test_css_034',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-016.xht',
		'arr': ['*'],
		'num': 'test_css_035',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-017.xht',
		'arr': ['*'],
		'num': 'test_css_036',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-018.xht',
		'arr': ['*'],
		'num': 'test_css_037',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-020.xht',
		'arr': ['*'],
		'num': 'test_css_038',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-021.xht',
		'arr': ['*'],
		'num': 'test_css_039',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-022.xht',
		'arr': ['*'],
		'num': 'test_css_040',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-024.xht',
		'arr': ['*'],
		'num': 'test_css_041',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-025.xht',
		'arr': ['*'],
		'num': 'test_css_042',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-026.xht',
		'arr': ['*'],
		'num': 'test_css_043',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-029.xht',
		'arr': ['*'],
		'num': 'test_css_044',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-030.xht',
		'arr': ['*'],
		'num': 'test_css_045',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-031.xht',
		'arr': ['*'],
		'num': 'test_css_046',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-033.xht',
		'arr': ['*'],
		'num': 'test_css_047',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-034.xht',
		'arr': ['*'],
		'num': 'test_css_048',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-036.xht',
		'arr': ['*'],
		'num': 'test_css_049',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-037.xht',
		'arr': ['*'],
		'num': 'test_css_050',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-038.xht',
		'arr': ['*'],
		'num': 'test_css_051',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-041.xht',
		'arr': ['*'],
		'num': 'test_css_052',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-043.xht',
		'arr': ['*'],
		'num': 'test_css_053',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-048.xht',
		'arr': ['*'],
		'num': 'test_css_054',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-050.xht',
		'arr': ['*'],
		'num': 'test_css_055',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-051.xht',
		'arr': ['*'],
		'num': 'test_css_056',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-052.xht',
		'arr': ['*'],
		'num': 'test_css_057',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-053.xht',
		'arr': ['*'],
		'num': 'test_css_058',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-055.xht',
		'arr': ['*'],
		'num': 'test_css_059',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-056.xht',
		'arr': ['*'],
		'num': 'test_css_060',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-058.xht',
		'arr': ['*'],
		'num': 'test_css_061',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-059.xht',
		'arr': ['*'],
		'num': 'test_css_062',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-060.xht',
		'arr': ['*'],
		'num': 'test_css_063',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-061.xht',
		'arr': ['*'],
		'num': 'test_css_064',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-063.xht',
		'arr': ['*'],
		'num': 'test_css_065',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-064.xht',
		'arr': ['*'],
		'num': 'test_css_066',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-068.xht',
		'arr': ['*'],
		'num': 'test_css_067',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-070.xht',
		'arr': ['*'],
		'num': 'test_css_068',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-071.xht',
		'arr': ['*'],
		'num': 'test_css_069',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-073.xht',
		'arr': ['*'],
		'num': 'test_css_070',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-075.xht',
		'arr': ['*'],
		'num': 'test_css_071',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-076.xht',
		'arr': ['*'],
		'num': 'test_css_072',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-078.xht',
		'arr': ['*'],
		'num': 'test_css_073',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-080.xht',
		'arr': ['*'],
		'num': 'test_css_074',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-081.xht',
		'arr': ['*'],
		'num': 'test_css_075',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-082.xht',
		'arr': ['*'],
		'num': 'test_css_076',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-083.xht',
		'arr': ['*'],
		'num': 'test_css_077',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-085.xht',
		'arr': ['*'],
		'num': 'test_css_078',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-087.xht',
		'arr': ['*'],
		'num': 'test_css_079',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-090.xht',
		'arr': ['*'],
		'num': 'test_css_080',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-093.xht',
		'arr': ['*'],
		'num': 'test_css_081',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-095.xht',
		'arr': ['*'],
		'num': 'test_css_082',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-096.xht',
		'arr': ['*'],
		'num': 'test_css_083',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-097.xht',
		'arr': ['*'],
		'num': 'test_css_084',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-101.xht',
		'arr': ['*'],
		'num': 'test_css_085',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-103.xht',
		'arr': ['*'],
		'num': 'test_css_086',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-104.xht',
		'arr': ['*'],
		'num': 'test_css_087',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-106.xht',
		'arr': ['*'],
		'num': 'test_css_088',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-107.xht',
		'arr': ['*'],
		'num': 'test_css_089',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-109.xht',
		'arr': ['*'],
		'num': 'test_css_090',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-111.xht',
		'arr': ['*'],
		'num': 'test_css_091',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-114.xht',
		'arr': ['*'],
		'num': 'test_css_092',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-117.xht',
		'arr': ['*'],
		'num': 'test_css_093',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-120.xht',
		'arr': ['*'],
		'num': 'test_css_094',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-128.xht',
		'arr': ['*'],
		'num': 'test_css_095',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-130.xht',
		'arr': ['*'],
		'num': 'test_css_096',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-135.xht',
		'arr': ['*'],
		'num': 'test_css_097',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-137.xht',
		'arr': ['*'],
		'num': 'test_css_098',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-138.xht',
		'arr': ['*'],
		'num': 'test_css_099',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-139.xht',
		'arr': ['*'],
		'num': 'test_css_100',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-141.xht',
		'arr': ['*'],
		'num': 'test_css_101',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-144.xht',
		'arr': ['*'],
		'num': 'test_css_102',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-147.xht',
		'arr': ['*'],
		'num': 'test_css_103',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-150.xht',
		'arr': ['*'],
		'num': 'test_css_104',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-152.xht',
		'arr': ['*'],
		'num': 'test_css_105',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-153.xht',
		'arr': ['*'],
		'num': 'test_css_106',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-154.xht',
		'arr': ['*'],
		'num': 'test_css_107',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-156.xht',
		'arr': ['*'],
		'num': 'test_css_108',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-161.xht',
		'arr': ['*'],
		'num': 'test_css_109',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-163.xht',
		'arr': ['*'],
		'num': 'test_css_110',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-171.xht',
		'arr': ['*'],
		'num': 'test_css_111',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-174.xht',
		'arr': ['*'],
		'num': 'test_css_112',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-177.xht',
		'arr': ['*'],
		'num': 'test_css_113',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-180.xht',
		'arr': ['*'],
		'num': 'test_css_114',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-182.xht',
		'arr': ['*'],
		'num': 'test_css_115',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-184.xht',
		'arr': ['*'],
		'num': 'test_css_116',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-185.xht',
		'arr': ['*'],
		'num': 'test_css_117',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-187.xht',
		'arr': ['*'],
		'num': 'test_css_118',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-188.xht',
		'arr': ['*'],
		'num': 'test_css_119',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-190.xht',
		'arr': ['*'],
		'num': 'test_css_120',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-194.xht',
		'arr': ['*'],
		'num': 'test_css_121',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-195.xht',
		'arr': ['*'],
		'num': 'test_css_122',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-196.xht',
		'arr': ['*'],
		'num': 'test_css_123',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-198.xht',
		'arr': ['*'],
		'num': 'test_css_124',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-201.xht',
		'arr': ['*'],
		'num': 'test_css_125',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-204.xht',
		'arr': ['*'],
		'num': 'test_css_126',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-326.xht',
		'arr': ['*'],
		'num': 'test_css_127',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-327.xht',
		'arr': ['*'],
		'num': 'test_css_128',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-328.xht',
		'arr': ['*'],
		'num': 'test_css_129',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-329.xht',
		'arr': ['*'],
		'num': 'test_css_130',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-applies-to-001.xht',
		'arr': ['*'],
		'num': 'test_css_131',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-applies-to-002.xht',
		'arr': ['*'],
		'num': 'test_css_132',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-applies-to-003.xht',
		'arr': ['*'],
		'num': 'test_css_133',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-applies-to-004.xht',
		'arr': ['*'],
		'num': 'test_css_134',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-applies-to-005.xht',
		'arr': ['*'],
		'num': 'test_css_135',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-applies-to-006.xht',
		'arr': ['*'],
		'num': 'test_css_136',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-applies-to-007.xht',
		'arr': ['*'],
		'num': 'test_css_137',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-applies-to-009.xht',
		'arr': ['*'],
		'num': 'test_css_138',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-applies-to-012.xht',
		'arr': ['*'],
		'num': 'test_css_139',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-applies-to-013.xht',
		'arr': ['*'],
		'num': 'test_css_140',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-applies-to-014.xht',
		'arr': ['*'],
		'num': 'test_css_141',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-applies-to-015.xht',
		'arr': ['*'],
		'num': 'test_css_142',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-attachment-009.xht',
		'arr': ['*'],
		'num': 'test_css_143',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-attachment-applies-to-001.xht',
		'arr': ['*'],
		'num': 'test_css_144',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-attachment-applies-to-002.xht',
		'arr': ['*'],
		'num': 'test_css_145',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-attachment-applies-to-003.xht',
		'arr': ['*'],
		'num': 'test_css_146',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-attachment-applies-to-004.xht',
		'arr': ['*'],
		'num': 'test_css_147',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-attachment-applies-to-005.xht',
		'arr': ['*'],
		'num': 'test_css_148',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-attachment-applies-to-006.xht',
		'arr': ['*'],
		'num': 'test_css_149',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-attachment-applies-to-007.xht',
		'arr': ['*'],
		'num': 'test_css_150',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-attachment-applies-to-009.xht',
		'arr': ['*'],
		'num': 'test_css_151',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-attachment-applies-to-012.xht',
		'arr': ['*'],
		'num': 'test_css_152',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-attachment-applies-to-013.xht',
		'arr': ['*'],
		'num': 'test_css_153',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-attachment-applies-to-014.xht',
		'arr': ['*'],
		'num': 'test_css_154',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-attachment-applies-to-015.xht',
		'arr': ['*'],
		'num': 'test_css_155',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-bg-pos-204.xht',
		'arr': ['*'],
		'num': 'test_css_156',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-bg-pos-206.xht',
		'arr': ['*'],
		'num': 'test_css_157',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-bg-pos-208.xht',
		'arr': ['*'],
		'num': 'test_css_158',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-body-001.xht',
		'arr': ['*'],
		'num': 'test_css_159',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-001.xht',
		'arr': ['*'],
		'num': 'test_css_160',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-002.xht',
		'arr': ['*'],
		'num': 'test_css_161',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-003.xht',
		'arr': ['*'],
		'num': 'test_css_162',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-004.xht',
		'arr': ['*'],
		'num': 'test_css_163',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-005.xht',
		'arr': ['*'],
		'num': 'test_css_164',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-006.xht',
		'arr': ['*'],
		'num': 'test_css_165',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-007.xht',
		'arr': ['*'],
		'num': 'test_css_166',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-008.xht',
		'arr': ['*'],
		'num': 'test_css_167',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-009.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_168',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-010.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_169',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-011.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_170',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-012.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_171',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-013.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_172',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-014.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_173',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-015.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_174',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-016.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_175',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-017.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_176',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-018.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_177',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-019.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_178',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-020.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_179',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-021.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_180',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-022.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_181',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-023.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_182',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-024.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_183',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-025.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_184',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-026.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_185',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-027.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_186',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-028.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_187',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-029.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_188',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-030.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_189',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-031.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_190',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-032.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_191',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-033.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_192',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-034.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_193',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-035.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_194',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-036.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_195',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-037.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_196',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-038.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_197',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-039.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_198',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-040.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_199',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-041.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_200',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-042.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_201',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-043.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_202',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-044.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_203',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-045.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_204',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-046.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_205',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-047.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_206',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-048.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_207',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-049.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_208',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-050.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_209',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-051.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_210',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-052.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_211',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-053.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_212',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-054.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_213',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-055.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_214',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-056.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_215',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-057.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_216',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-058.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_217',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-059.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_218',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-060.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_219',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-061.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_220',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-062.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_221',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-063.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_222',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-064.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_223',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-065.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_224',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-066.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_225',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-067.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_226',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-068.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_227',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-069.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_228',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-070.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_229',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-071.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_230',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-072.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_231',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-073.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_232',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-074.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_233',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-075.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_234',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-076.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_235',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-077.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_236',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-078.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_237',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-079.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_238',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-080.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_239',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-081.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_240',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-082.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_241',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-083.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_242',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-084.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_243',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-085.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_244',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-086.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_245',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-087.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_246',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-088.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_247',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-089.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_248',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-090.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_249',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-091.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_250',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-092.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_251',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-093.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_252',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-094.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_253',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-095.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_254',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-096.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_255',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-097.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_256',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-098.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_257',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-099.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_258',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-100.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_259',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-101.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_260',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-102.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_261',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-103.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_262',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-104.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_263',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-105.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_264',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-106.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_265',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-107.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_266',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-108.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_267',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-109.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_268',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-110.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_269',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-111.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_270',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-112.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_271',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-113.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_272',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-114.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_273',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-115.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_274',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-116.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_275',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-117.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_276',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-118.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_277',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-119.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_278',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-120.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_279',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-121.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_280',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-122.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_281',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-123.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_282',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-124.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_283',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-125.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_284',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-126.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_285',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-127.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_286',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-128.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_287',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-129.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_288',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-130.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_289',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-131.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_290',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-132.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_291',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-133.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_292',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-134.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_293',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-135.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_294',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-136.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_295',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-137.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_296',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-138.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_297',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-139.xht',
		'arr': ['*'],
		'num': 'test_css_298',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-140.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_299',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-141.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_300',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-142.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_301',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-143.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_302',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-144.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_303',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-145.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_304',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-174.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_305',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-175.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_306',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-applies-to-001.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_307',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-applies-to-002.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_308',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-applies-to-003.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_309',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-applies-to-004.xht',
		'arr': ['//*[@id="table"]', '*'],
		'num': 'test_css_310',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-applies-to-005.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_311',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-applies-to-006.xht',
		'arr': ['//*[@id="table"]', '*'],
		'num': 'test_css_312',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-applies-to-007.xht',
		'arr': ['//*[@id="table"]', '*'],
		'num': 'test_css_313',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-applies-to-009.xht',
		'arr': ['*'],
		'num': 'test_css_314',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-applies-to-012.xht',
		'arr': ['//*[@id="inline-block"]', '*'],
		'num': 'test_css_315',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-applies-to-013.xht',
		'arr': ['//*[@id="table"]', '*'],
		'num': 'test_css_316',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-applies-to-014.xht',
		'arr': ['//*[@id="table"]', '*'],
		'num': 'test_css_317',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-color-applies-to-015.xht',
		'arr': ['//*[@id="caption"]', '*'],
		'num': 'test_css_318',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-image-001.xht',
		'arr': ['*'],
		'num': 'test_css_319',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-image-002.xht',
		'arr': ['*'],
		'num': 'test_css_320',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-image-003.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_321',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-image-005.xht',
		'arr': ['*'],
		'num': 'test_css_322',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-image-applies-to-001.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_323',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-image-applies-to-002.xht',
		'arr': ['//*[@id="table"]', '*'],
		'num': 'test_css_324',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-image-applies-to-003.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_325',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-image-applies-to-004.xht',
		'arr': ['//*[@id="table"]', '*'],
		'num': 'test_css_326',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-image-applies-to-005.xht',
		'arr': ['//*[@id="table"]', '*'],
		'num': 'test_css_327',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-image-applies-to-006.xht',
		'arr': ['//*[@id="table"]', '*'],
		'num': 'test_css_328',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-image-applies-to-007.xht',
		'arr': ['//*[@id="table"]', '*'],
		'num': 'test_css_329',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-image-applies-to-009.xht',
		'arr': ['*'],
		'num': 'test_css_330',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-image-applies-to-012.xht',
		'arr': ['//*[@id="inline-block"]', '*'],
		'num': 'test_css_331',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-image-applies-to-013.xht',
		'arr': ['//*[@id="table"]', '*'],
		'num': 'test_css_332',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-image-applies-to-014.xht',
		'arr': ['//*[@id="table"]', '*'],
		'num': 'test_css_333',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-image-applies-to-015.xht',
		'arr': ['//*[@id="caption"]', '*'],
		'num': 'test_css_334',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-image-cover-002.xht',
		'arr': ['*'],
		'num': 'test_css_335',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-image-cover-004.xht',
		'arr': ['*'],
		'num': 'test_css_336',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-image-cover-attachment-001.xht',
		'arr': ['*'],
		'num': 'test_css_337',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-image-transparency-001.xht',
		'arr': ['*'],
		'num': 'test_css_338',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-intrinsic-001.xht',
		'arr': ['*'],
		'num': 'test_css_339',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-intrinsic-002.xht',
		'arr': ['*'],
		'num': 'test_css_340',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-intrinsic-003.xht',
		'arr': ['*'],
		'num': 'test_css_341',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-intrinsic-004.xht',
		'arr': ['*'],
		'num': 'test_css_342',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-intrinsic-005.xht',
		'arr': ['*'],
		'num': 'test_css_343',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-intrinsic-006.xht',
		'arr': ['*'],
		'num': 'test_css_344',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-intrinsic-007.xht',
		'arr': ['*'],
		'num': 'test_css_345',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-intrinsic-008.xht',
		'arr': ['*'],
		'num': 'test_css_346',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-intrinsic-009.xht',
		'arr': ['*'],
		'num': 'test_css_347',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-intrinsic-010.xht',
		'arr': ['*'],
		'num': 'test_css_348',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-position-001.xht',
		'arr': ['//*[@id="expected-results"]'],
		'num': 'test_css_349',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-position-002.xht',
		'arr': ['//*[@id="expected-results"]'],
		'num': 'test_css_350',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-position-004.xht',
		'arr': ['//*[@id="div1"]', '*'],
		'num': 'test_css_351',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-position-005.xht',
		'arr': ['//*[@id="div1"]', '*'],
		'num': 'test_css_352',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-position-006.xht',
		'arr': ['//*[@id="div1"]', '*'],
		'num': 'test_css_353',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-position-007.xht',
		'arr': ['//*[@id="div1"]', '*'],
		'num': 'test_css_354',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-position-008.xht',
		'arr': ['//*[@id="div1"]', '*'],
		'num': 'test_css_355',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-position-016.xht',
		'arr': ['//*[@id="div1"]', '*'],
		'num': 'test_css_356',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-position-017.xht',
		'arr': ['//*[@id="div1"]', '*'],
		'num': 'test_css_357',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-position-018.xht',
		'arr': ['//*[@id="div1"]', '*'],
		'num': 'test_css_358',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-position-028.xht',
		'arr': ['//*[@id="div1"]', '*'],
		'num': 'test_css_359',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-position-029.xht',
		'arr': ['//*[@id="div1"]', '*'],
		'num': 'test_css_360',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-position-030.xht',
		'arr': ['//*[@id="div1"]', '*'],
		'num': 'test_css_361',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-position-040.xht',
		'arr': ['//*[@id="div1"]', '*'],
		'num': 'test_css_362',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-position-041.xht',
		'arr': ['//*[@id="div1"]', '*'],
		'num': 'test_css_363',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-position-042.xht',
		'arr': ['//*[@id="div1"]', '*'],
		'num': 'test_css_364',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-position-052.xht',
		'arr': ['//*[@id="div1"]', '*'],
		'num': 'test_css_365',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-position-053.xht',
		'arr': ['//*[@id="div1"]', '*'],
		'num': 'test_css_366',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-position-054.xht',
		'arr': ['//*[@id="div1"]', '*'],
		'num': 'test_css_367',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-position-064.xht',
		'arr': ['//*[@id="div1"]', '*'],
		'num': 'test_css_368',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-position-065.xht',
		'arr': ['//*[@id="div1"]', '*'],
		'num': 'test_css_369',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-position-066.xht',
		'arr': ['//*[@id="div1"]', '*'],
		'num': 'test_css_370',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-position-076.xht',
		'arr': ['//*[@id="div1"]', '*'],
		'num': 'test_css_371',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-position-077.xht',
		'arr': ['//*[@id="div1"]', '*'],
		'num': 'test_css_372',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-position-078.xht',
		'arr': ['//*[@id="div1"]', '*'],
		'num': 'test_css_373',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-position-088.xht',
		'arr': ['//*[@id="div1"]', '*'],
		'num': 'test_css_374',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-position-089.xht',
		'arr': ['//*[@id="div1"]', '*'],
		'num': 'test_css_375',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-position-090.xht',
		'arr': ['//*[@id="div1"]', '*'],
		'num': 'test_css_376',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-position-100.xht',
		'arr': ['//*[@id="div1"]', '*'],
		'num': 'test_css_377',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-position-101.xht',
		'arr': ['//*[@id="div1"]', '*'],
		'num': 'test_css_378',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-position-102.xht',
		'arr': ['//*[@id="div1"]', '*'],
		'num': 'test_css_379',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-position-109.xht',
		'arr': ['//*[@id="div1"]', '*'],
		'num': 'test_css_380',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-position-110.xht',
		'arr': ['//*[@id="div1"]', '*'],
		'num': 'test_css_381',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-position-111.xht',
		'arr': ['//*[@id="div1"]', '*'],
		'num': 'test_css_382',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-position-112.xht',
		'arr': ['//*[@id="div1"]', '*'],
		'num': 'test_css_383',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-position-113.xht',
		'arr': ['//*[@id="div1"]', '*'],
		'num': 'test_css_384',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-position-114.xht',
		'arr': ['//*[@id="div1"]', '*'],
		'num': 'test_css_385',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-position-115.xht',
		'arr': ['//*[@id="div1"]', '*'],
		'num': 'test_css_386',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-position-116.xht',
		'arr': ['//*[@id="div1"]', '*'],
		'num': 'test_css_387',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-position-117.xht',
		'arr': ['//*[@id="div1"]', '*'],
		'num': 'test_css_388',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-position-118.xht',
		'arr': ['//*[@id="div1"]', '*'],
		'num': 'test_css_389',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-position-119.xht',
		'arr': ['//*[@id="div1"]', '*'],
		'num': 'test_css_390',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-position-120.xht',
		'arr': ['//*[@id="div1"]', '*'],
		'num': 'test_css_391',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-position-121.xht',
		'arr': ['//*[@id="div1"]', '*'],
		'num': 'test_css_392',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-position-122.xht',
		'arr': ['//*[@id="div1"]', '*'],
		'num': 'test_css_393',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-position-123.xht',
		'arr': ['//*[@id="div1"]', '*'],
		'num': 'test_css_394',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-position-124.xht',
		'arr': ['//*[@id="div1"]', '*'],
		'num': 'test_css_395',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-position-125.xht',
		'arr': ['//*[@id="div1"]', '*'],
		'num': 'test_css_396',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-position-126.xht',
		'arr': ['//*[@id="div1"]', '*'],
		'num': 'test_css_397',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-position-127.xht',
		'arr': ['//*[@id="div1"]', '*'],
		'num': 'test_css_398',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-position-128.xht',
		'arr': ['//*[@id="div1"]', '*'],
		'num': 'test_css_399',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-position-129.xht',
		'arr': ['//*[@id="div1"]', '*'],
		'num': 'test_css_400',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-position-130.xht',
		'arr': ['//*[@id="div1"]', '*'],
		'num': 'test_css_401',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-position-131.xht',
		'arr': ['//*[@id="div1"]', '*'],
		'num': 'test_css_402',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-position-132.xht',
		'arr': ['//*[@id="div1"]', '*'],
		'num': 'test_css_403',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-position-133.xht',
		'arr': ['//*[@id="div1"]', '*'],
		'num': 'test_css_404',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-position-134.xht',
		'arr': ['//*[@id="div1"]', '*'],
		'num': 'test_css_405',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-position-135.xht',
		'arr': ['//*[@id="div1"]', '*'],
		'num': 'test_css_406',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-position-136.xht',
		'arr': ['//*[@id="div1"]', '*'],
		'num': 'test_css_407',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-position-137.xht',
		'arr': ['//*[@id="div1"]', '*'],
		'num': 'test_css_408',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-position-138.xht',
		'arr': ['//*[@id="div1"]', '*'],
		'num': 'test_css_409',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-position-139.xht',
		'arr': ['//*[@id="div1"]', '*'],
		'num': 'test_css_410',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-position-140.xht',
		'arr': ['//*[@id="div1"]', '*'],
		'num': 'test_css_411',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-position-141.xht',
		'arr': ['//*[@id="div1"]', '*'],
		'num': 'test_css_412',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-position-142.xht',
		'arr': ['//*[@id="div1"]', '*'],
		'num': 'test_css_413',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-position-143.xht',
		'arr': ['//*[@id="div1"]', '*'],
		'num': 'test_css_414',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-position-144.xht',
		'arr': ['//*[@id="div1"]', '*'],
		'num': 'test_css_415',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-position-145.xht',
		'arr': ['//*[@id="div1"]', '*'],
		'num': 'test_css_416',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-position-146.xht',
		'arr': ['//*[@id="div1"]', '*'],
		'num': 'test_css_417',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-position-147.xht',
		'arr': ['//*[@id="div1"]', '*'],
		'num': 'test_css_418',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-position-148.xht',
		'arr': ['//*[@id="div1"]', '*'],
		'num': 'test_css_419',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-position-149.xht',
		'arr': ['//*[@id="div1"]', '*'],
		'num': 'test_css_420',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-position-150.xht',
		'arr': ['//*[@id="div1"]', '*'],
		'num': 'test_css_421',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-position-151.xht',
		'arr': ['//*[@id="div1"]', '*'],
		'num': 'test_css_422',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-position-152.xht',
		'arr': ['//*[@id="nearest-positioned-ancestor"]', '*'],
		'num': 'test_css_423',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-position-applies-to-001.xht',
		'arr': ['//*[@id="table"]', '*'],
		'num': 'test_css_424',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-position-applies-to-001a.xht',
		'arr': ['*'],
		'num': 'test_css_425',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-position-applies-to-001b.xht',
		'arr': ['*'],
		'num': 'test_css_426',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-position-applies-to-001c.xht',
		'arr': ['*'],
		'num': 'test_css_427',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-position-applies-to-001d.xht',
		'arr': ['//*[@id="table"]', '*'],
		'num': 'test_css_428',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-position-applies-to-001e.xht',
		'arr': ['//*[@id="table"]', '*'],
		'num': 'test_css_429',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-position-applies-to-002.xht',
		'arr': ['//*[@id="table"]', '*'],
		'num': 'test_css_430',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-position-applies-to-002a.xht',
		'arr': ['*'],
		'num': 'test_css_431',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-position-applies-to-002b.xht',
		'arr': ['*'],
		'num': 'test_css_432',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-position-applies-to-002c.xht',
		'arr': ['*'],
		'num': 'test_css_433',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-position-applies-to-002d.xht',
		'arr': ['//*[@id="table"]', '*'],
		'num': 'test_css_434',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-position-applies-to-002e.xht',
		'arr': ['//*[@id="table"]', '*'],
		'num': 'test_css_435',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-position-applies-to-003.xht',
		'arr': ['//*[@id="table"]', '*'],
		'num': 'test_css_436',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-position-applies-to-003b.xht',
		'arr': ['*'],
		'num': 'test_css_437',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-position-applies-to-003c.xht',
		'arr': ['*'],
		'num': 'test_css_438',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-position-applies-to-003d.xht',
		'arr': ['//*[@id="table"]', '*'],
		'num': 'test_css_439',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-position-applies-to-003e.xht',
		'arr': ['//*[@id="table"]', '*'],
		'num': 'test_css_440',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-position-applies-to-004.xht',
		'arr': ['//*[@id="table"]', '*'],
		'num': 'test_css_441',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-position-applies-to-005.xht',
		'arr': ['//*[@id="table"]', '*'],
		'num': 'test_css_442',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-position-applies-to-005a.xht',
		'arr': ['*'],
		'num': 'test_css_443',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-position-applies-to-005b.xht',
		'arr': ['*'],
		'num': 'test_css_444',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-position-applies-to-005c.xht',
		'arr': ['*'],
		'num': 'test_css_445',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-position-applies-to-005d.xht',
		'arr': ['//*[@id="table"]', '*'],
		'num': 'test_css_446',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-position-applies-to-005e.xht',
		'arr': ['//*[@id="table"]', '*'],
		'num': 'test_css_447',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-position-applies-to-006.xht',
		'arr': ['//*[@id="table"]', '*'],
		'num': 'test_css_448',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-position-applies-to-006a.xht',
		'arr': ['//*[@id="tested-col"]', '*'],
		'num': 'test_css_449',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-position-applies-to-006b.xht',
		'arr': ['//*[@id="tested-col"]', '*'],
		'num': 'test_css_450',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-position-applies-to-006c.xht',
		'arr': ['//*[@id="tested-col"]', '*'],
		'num': 'test_css_451',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-position-applies-to-006d.xht',
		'arr': ['//*[@id="tbody"]', '*'],
		'num': 'test_css_452',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-position-applies-to-006e.xht',
		'arr': ['//*[@id="tested-col"]', '*'],
		'num': 'test_css_453',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-position-applies-to-007.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_454',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-position-applies-to-009.xht',
		'arr': ['*'],
		'num': 'test_css_455',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-position-applies-to-012.xht',
		'arr': ['//*[@id="inline-block"]', '*'],
		'num': 'test_css_456',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-position-applies-to-013.xht',
		'arr': ['//*[@id="table"]', '*'],
		'num': 'test_css_457',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-position-applies-to-013d.xht',
		'arr': ['//*[@id="green-overlapping"]', '*'],
		'num': 'test_css_458',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-position-applies-to-013e.xht',
		'arr': ['//*[@id="overlapping-green"]', '*'],
		'num': 'test_css_459',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-position-applies-to-014.xht',
		'arr': ['//*[@id="table"]', '*'],
		'num': 'test_css_460',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-position-applies-to-015.xht',
		'arr': ['//*[@id="row"]', '*'],
		'num': 'test_css_461',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-repeat-001.xht',
		'arr': ['*'],
		'num': 'test_css_462',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-repeat-002.xht',
		'arr': ['*'],
		'num': 'test_css_463',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-repeat-003.xht',
		'arr': ['*'],
		'num': 'test_css_464',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-repeat-004.xht',
		'arr': ['*'],
		'num': 'test_css_465',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-repeat-005.xht',
		'arr': ['*'],
		'num': 'test_css_466',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-repeat-applies-to-001.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_467',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-repeat-applies-to-002.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_468',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-repeat-applies-to-003.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_469',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-repeat-applies-to-004.xht',
		'arr': ['//*[@id="row"]', '*'],
		'num': 'test_css_470',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-repeat-applies-to-005.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_471',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-repeat-applies-to-006.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_472',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-repeat-applies-to-007.xht',
		'arr': ['//*[@id="row"]', '*'],
		'num': 'test_css_473',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-repeat-applies-to-009.xht',
		'arr': ['*'],
		'num': 'test_css_474',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-repeat-applies-to-012.xht',
		'arr': ['//*[@id="inline-block"]', '*'],
		'num': 'test_css_475',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-repeat-applies-to-013.xht',
		'arr': ['//*[@id="table"]', '*'],
		'num': 'test_css_476',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-repeat-applies-to-014.xht',
		'arr': ['//*[@id="table"]', '*'],
		'num': 'test_css_477',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-repeat-applies-to-015.xht',
		'arr': ['//*[@id="row"]', '*'],
		'num': 'test_css_478',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-reset-001.xht',
		'arr': ['*'],
		'num': 'test_css_479',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-root-001.xht',
		'arr': ['*'],
		'num': 'test_css_480',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-root-002.xht',
		'arr': ['*'],
		'num': 'test_css_481',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-root-004.xht',
		'arr': ['*'],
		'num': 'test_css_482',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-root-005.xht',
		'arr': ['*'],
		'num': 'test_css_483',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-root-006.xht',
		'arr': ['*'],
		'num': 'test_css_484',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-root-007.xht',
		'arr': ['*'],
		'num': 'test_css_485',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-root-008.xht',
		'arr': ['*'],
		'num': 'test_css_486',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-root-009.xht',
		'arr': ['*'],
		'num': 'test_css_487',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-root-010.xht',
		'arr': ['*'],
		'num': 'test_css_488',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-root-011.xht',
		'arr': ['*'],
		'num': 'test_css_489',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-root-012b.xht',
		'arr': ['*'],
		'num': 'test_css_490',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-root-013b.xht',
		'arr': ['*'],
		'num': 'test_css_491',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-root-014b.xht',
		'arr': ['*'],
		'num': 'test_css_492',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-root-015.xht',
		'arr': ['*'],
		'num': 'test_css_493',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-root-016.xht',
		'arr': ['*'],
		'num': 'test_css_494',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-root-017.xht',
		'arr': ['*'],
		'num': 'test_css_495',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-root-018.xht',
		'arr': ['*'],
		'num': 'test_css_496',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-root-019.xht',
		'arr': ['*'],
		'num': 'test_css_497',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-root-020.xht',
		'arr': ['*'],
		'num': 'test_css_498',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-root-023.xht',
		'arr': ['*'],
		'num': 'test_css_499',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-root-024.xht',
		'arr': ['*'],
		'num': 'test_css_500',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-root-101.xht',
		'arr': ['*'],
		'num': 'test_css_501',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-root-102.xht',
		'arr': ['*'],
		'num': 'test_css_502',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/backgrounds/background-root-103.xht',
		'arr': ['*'],
		'num': 'test_css_503',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/bidi-005.xht',
		'arr': ['*'],
		'num': 'test_css_504',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/bidi-006.xht',
		'arr': ['*'],
		'num': 'test_css_505',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/bidi-007.xht',
		'arr': ['*'],
		'num': 'test_css_506',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/bidi-008.xht',
		'arr': ['*'],
		'num': 'test_css_507',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/bidi-009.xht',
		'arr': ['*'],
		'num': 'test_css_508',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/bidi-010.xht',
		'arr': ['*'],
		'num': 'test_css_509',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/bidi-text/bidi-001.xht',
		'arr': ['*'],
		'num': 'test_css_510',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/bidi-text/bidi-002.xht',
		'arr': ['*'],
		'num': 'test_css_511',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/bidi-text/bidi-003.xht',
		'arr': ['*'],
		'num': 'test_css_512',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/bidi-text/bidi-004.xht',
		'arr': ['*'],
		'num': 'test_css_513',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/bidi-text/bidi-005a.xht',
		'arr': ['*'],
		'num': 'test_css_514',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/bidi-text/bidi-005b.xht',
		'arr': ['*'],
		'num': 'test_css_515',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/bidi-text/bidi-006a.xht',
		'arr': ['*'],
		'num': 'test_css_516',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/bidi-text/bidi-006b.xht',
		'arr': ['*'],
		'num': 'test_css_517',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/bidi-text/bidi-007a.xht',
		'arr': ['*'],
		'num': 'test_css_518',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/bidi-text/bidi-007b.xht',
		'arr': ['*'],
		'num': 'test_css_519',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/bidi-text/bidi-008a.xht',
		'arr': ['*'],
		'num': 'test_css_520',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/bidi-text/bidi-008b.xht',
		'arr': ['*'],
		'num': 'test_css_521',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/bidi-text/bidi-009a.xht',
		'arr': ['*'],
		'num': 'test_css_522',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/bidi-text/bidi-009b.xht',
		'arr': ['*'],
		'num': 'test_css_523',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/bidi-text/bidi-010a.xht',
		'arr': ['*'],
		'num': 'test_css_524',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/bidi-text/bidi-010b.xht',
		'arr': ['*'],
		'num': 'test_css_525',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/bidi-text/bidi-011.xht',
		'arr': ['*'],
		'num': 'test_css_526',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/bidi-text/bidi-box-model-001.xht',
		'arr': ['*'],
		'num': 'test_css_527',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/bidi-text/bidi-box-model-002.xht',
		'arr': ['*'],
		'num': 'test_css_528',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/bidi-text/bidi-box-model-003.xht',
		'arr': ['*'],
		'num': 'test_css_529',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/bidi-text/bidi-box-model-004.xht',
		'arr': ['*'],
		'num': 'test_css_530',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/bidi-text/bidi-box-model-005.xht',
		'arr': ['*'],
		'num': 'test_css_531',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/bidi-text/bidi-box-model-006.xht',
		'arr': ['*'],
		'num': 'test_css_532',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/bidi-text/bidi-box-model-007.xht',
		'arr': ['*'],
		'num': 'test_css_533',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/bidi-text/bidi-box-model-008.xht',
		'arr': ['*'],
		'num': 'test_css_534',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/bidi-text/bidi-box-model-009.xht',
		'arr': ['*'],
		'num': 'test_css_535',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/bidi-text/bidi-box-model-010.xht',
		'arr': ['*'],
		'num': 'test_css_536',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/bidi-text/bidi-box-model-011.xht',
		'arr': ['*'],
		'num': 'test_css_537',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/bidi-text/bidi-box-model-012.xht',
		'arr': ['*'],
		'num': 'test_css_538',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/bidi-text/bidi-box-model-013.xht',
		'arr': ['*'],
		'num': 'test_css_539',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/bidi-text/bidi-box-model-014.xht',
		'arr': ['*'],
		'num': 'test_css_540',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/bidi-text/bidi-box-model-015.xht',
		'arr': ['*'],
		'num': 'test_css_541',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/bidi-text/bidi-box-model-016.xht',
		'arr': ['*'],
		'num': 'test_css_542',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/bidi-text/bidi-box-model-017.xht',
		'arr': ['*'],
		'num': 'test_css_543',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/bidi-text/bidi-box-model-018.xht',
		'arr': ['*'],
		'num': 'test_css_544',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/bidi-text/bidi-box-model-019.xht',
		'arr': ['*'],
		'num': 'test_css_545',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/bidi-text/bidi-box-model-020.xht',
		'arr': ['*'],
		'num': 'test_css_546',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/bidi-text/bidi-box-model-021.xht',
		'arr': ['*'],
		'num': 'test_css_547',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/bidi-text/bidi-box-model-022.xht',
		'arr': ['*'],
		'num': 'test_css_548',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/bidi-text/bidi-box-model-023.xht',
		'arr': ['*'],
		'num': 'test_css_549',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/bidi-text/bidi-box-model-024.xht',
		'arr': ['*'],
		'num': 'test_css_550',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/bidi-text/bidi-box-model-025.xht',
		'arr': ['*'],
		'num': 'test_css_551',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/bidi-text/bidi-box-model-026.xht',
		'arr': ['*'],
		'num': 'test_css_552',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/bidi-text/bidi-box-model-027.xht',
		'arr': ['*'],
		'num': 'test_css_553',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/bidi-text/bidi-box-model-028.xht',
		'arr': ['*'],
		'num': 'test_css_554',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/bidi-text/bidi-box-model-029.xht',
		'arr': ['*'],
		'num': 'test_css_555',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/bidi-text/bidi-box-model-030.xht',
		'arr': ['*'],
		'num': 'test_css_556',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/bidi-text/bidi-box-model-031.xht',
		'arr': ['*'],
		'num': 'test_css_557',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/bidi-text/bidi-box-model-032.xht',
		'arr': ['*'],
		'num': 'test_css_558',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/bidi-text/bidi-box-model-033.xht',
		'arr': ['*'],
		'num': 'test_css_559',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/bidi-text/bidi-box-model-034.xht',
		'arr': ['*'],
		'num': 'test_css_560',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/bidi-text/bidi-box-model-035.xht',
		'arr': ['*'],
		'num': 'test_css_561',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/bidi-text/bidi-box-model-036.xht',
		'arr': ['*'],
		'num': 'test_css_562',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/bidi-text/bidi-box-model-037.xht',
		'arr': ['*'],
		'num': 'test_css_563',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/bidi-text/bidi-box-model-038.xht',
		'arr': ['*'],
		'num': 'test_css_564',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/bidi-text/bidi-box-model-039.xht',
		'arr': ['*'],
		'num': 'test_css_565',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/bidi-text/bidi-box-model-040.xht',
		'arr': ['*'],
		'num': 'test_css_566',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/bidi-text/bidi-box-model-041.xht',
		'arr': ['*'],
		'num': 'test_css_567',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/bidi-text/bidi-box-model-042.xht',
		'arr': ['*'],
		'num': 'test_css_568',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/bidi-text/bidi-box-model-043.xht',
		'arr': ['*'],
		'num': 'test_css_569',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/bidi-text/bidi-box-model-044.xht',
		'arr': ['*'],
		'num': 'test_css_570',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/bidi-text/bidi-box-model-045.xht',
		'arr': ['*'],
		'num': 'test_css_571',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/bidi-text/bidi-breaking-001.xht',
		'arr': ['*'],
		'num': 'test_css_572',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/bidi-text/bidi-breaking-002.xht',
		'arr': ['*'],
		'num': 'test_css_573',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/bidi-text/bidi-breaking-003.xht',
		'arr': ['*'],
		'num': 'test_css_574',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/bidi-text/bidi-glyph-mirroring-001.xht',
		'arr': ['*'],
		'num': 'test_css_575',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/bidi-text/bidi-glyph-mirroring-002.xht',
		'arr': ['*'],
		'num': 'test_css_576',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/bidi-text/bidi-inline-001.xht',
		'arr': ['*'],
		'num': 'test_css_577',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/bidi-text/bidi-inline-002.xht',
		'arr': ['*'],
		'num': 'test_css_578',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/bidi-text/direction-001.xht',
		'arr': ['*'],
		'num': 'test_css_579',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/bidi-text/direction-002.xht',
		'arr': ['*'],
		'num': 'test_css_580',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/bidi-text/direction-003.xht',
		'arr': ['//*[@id="wrapper"]', '*'],
		'num': 'test_css_581',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/bidi-text/direction-applies-to-001.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_582',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/bidi-text/direction-applies-to-002.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_583',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/bidi-text/direction-applies-to-003.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_584',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/bidi-text/direction-applies-to-004.xht',
		'arr': ['//*[@id="table"]', '*'],
		'num': 'test_css_585',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/bidi-text/direction-applies-to-005.xht',
		'arr': ['//*[@id="row"]', '*'],
		'num': 'test_css_586',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/bidi-text/direction-applies-to-006.xht',
		'arr': ['//*[@id="row"]', '*'],
		'num': 'test_css_587',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/bidi-text/direction-applies-to-007.xht',
		'arr': ['//*[@id="row"]', '*'],
		'num': 'test_css_588',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/bidi-text/direction-applies-to-008.xht',
		'arr': ['*'],
		'num': 'test_css_589',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/bidi-text/direction-applies-to-009.xht',
		'arr': ['*'],
		'num': 'test_css_590',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/bidi-text/direction-applies-to-012.xht',
		'arr': ['*'],
		'num': 'test_css_591',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/bidi-text/direction-applies-to-013.xht',
		'arr': ['//*[@id="table"]', '*'],
		'num': 'test_css_592',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/bidi-text/direction-applies-to-014.xht',
		'arr': ['//*[@id="table"]', '*'],
		'num': 'test_css_593',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/bidi-text/direction-applies-to-015.xht',
		'arr': ['//*[@id="row"]', '*'],
		'num': 'test_css_594',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/bidi-text/line-breaking-bidi-001.xht',
		'arr': ['*'],
		'num': 'test_css_595',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/bidi-text/line-breaking-bidi-002.xht',
		'arr': ['*'],
		'num': 'test_css_596',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/bidi-text/line-breaking-bidi-003.xht',
		'arr': ['*'],
		'num': 'test_css_597',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/bidi-text/unicode-bidi-001.xht',
		'arr': ['*'],
		'num': 'test_css_598',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/bidi-text/unicode-bidi-002.xht',
		'arr': ['*'],
		'num': 'test_css_599',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/bidi-text/unicode-bidi-003.xht',
		'arr': ['*'],
		'num': 'test_css_600',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/bidi-text/unicode-bidi-004.xht',
		'arr': ['//*[@id="div1"]', '*'],
		'num': 'test_css_601',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/bidi-text/unicode-bidi-applies-to-001.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_602',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/bidi-text/unicode-bidi-applies-to-002.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_603',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/bidi-text/unicode-bidi-applies-to-003.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_604',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/bidi-text/unicode-bidi-applies-to-004.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_605',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/bidi-text/unicode-bidi-applies-to-005.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_606',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/bidi-text/unicode-bidi-applies-to-006.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_607',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/bidi-text/unicode-bidi-applies-to-007.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_608',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/bidi-text/unicode-bidi-applies-to-008.xht',
		'arr': ['*'],
		'num': 'test_css_609',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/bidi-text/unicode-bidi-applies-to-009.xht',
		'arr': ['*'],
		'num': 'test_css_610',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/bidi-text/unicode-bidi-applies-to-012.xht',
		'arr': ['*'],
		'num': 'test_css_611',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/bidi-text/unicode-bidi-applies-to-013.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_612',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/bidi-text/unicode-bidi-applies-to-014.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_613',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/bidi-text/unicode-bidi-applies-to-015.xht',
		'arr': ['//*[@id="table"]', '*'],
		'num': 'test_css_614',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/border-seams-001.xht',
		'arr': ['//*[@id="outer"]', '*'],
		'num': 'test_css_615',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-001.xht',
		'arr': ['*'],
		'num': 'test_css_616',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-003.xht',
		'arr': ['*'],
		'num': 'test_css_617',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-005.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_618',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-006.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_619',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-008.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_620',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-applies-to-001.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_621',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-applies-to-002.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_622',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-applies-to-003.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_623',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-applies-to-004.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_624',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-applies-to-005.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_625',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-applies-to-006.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_626',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-applies-to-007.xht',
		'arr': ['//*[@id="cell"]', '*'],
		'num': 'test_css_627',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-applies-to-009.xht',
		'arr': ['*'],
		'num': 'test_css_628',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-applies-to-012.xht',
		'arr': ['//*[@id="inline-block"]', '*'],
		'num': 'test_css_629',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-applies-to-013.xht',
		'arr': ['//*[@id="table"]', '*'],
		'num': 'test_css_630',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-applies-to-014.xht',
		'arr': ['//*[@id="table"]', '*'],
		'num': 'test_css_631',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-applies-to-015.xht',
		'arr': ['//*[@id="row"]', '*'],
		'num': 'test_css_632',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-001.xht',
		'arr': ['*'],
		'num': 'test_css_633',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-005.xht',
		'arr': ['*'],
		'num': 'test_css_634',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-006.xht',
		'arr': ['*'],
		'num': 'test_css_635',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-008.xht',
		'arr': ['*'],
		'num': 'test_css_636',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-016.xht',
		'arr': ['//*[@id="div1"]', '*'],
		'num': 'test_css_637',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-018.xht',
		'arr': ['//*[@id="div1"]', '*'],
		'num': 'test_css_638',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-applies-to-001.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_639',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-applies-to-002.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_640',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-applies-to-003.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_641',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-applies-to-004.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_642',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-applies-to-005.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_643',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-applies-to-006.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_644',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-applies-to-007.xht',
		'arr': ['//*[@id="cell"]', '*'],
		'num': 'test_css_645',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-applies-to-009.xht',
		'arr': ['*'],
		'num': 'test_css_646',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-applies-to-012.xht',
		'arr': ['*'],
		'num': 'test_css_647',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-applies-to-013.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_648',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-applies-to-014.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_649',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-applies-to-015.xht',
		'arr': ['//*[@id="row"]', '*'],
		'num': 'test_css_650',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-001.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_651',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-002.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_652',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-003.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_653',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-004.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_654',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-005.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_655',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-006.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_656',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-007.xht',
		'arr': ['*'],
		'num': 'test_css_657',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-008.xht',
		'arr': ['*'],
		'num': 'test_css_658',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-009.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_659',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-010.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_660',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-011.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_661',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-012.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_662',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-013.xht',
		'arr': ['*'],
		'num': 'test_css_663',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-014.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_664',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-015.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_665',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-016.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_666',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-017.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_667',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-018.xht',
		'arr': ['*'],
		'num': 'test_css_668',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-019.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_669',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-020.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_670',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-021.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_671',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-022.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_672',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-023.xht',
		'arr': ['*'],
		'num': 'test_css_673',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-024.xht',
		'arr': ['*'],
		'num': 'test_css_674',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-025.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_675',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-026.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_676',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-027.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_677',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-028.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_678',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-029.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_679',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-030.xht',
		'arr': ['*'],
		'num': 'test_css_680',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-031.xht',
		'arr': ['*'],
		'num': 'test_css_681',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-032.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_682',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-033.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_683',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-034.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_684',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-035.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_685',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-036.xht',
		'arr': ['*'],
		'num': 'test_css_686',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-037.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_687',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-038.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_688',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-039.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_689',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-040.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_690',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-041.xht',
		'arr': ['*'],
		'num': 'test_css_691',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-042.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_692',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-043.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_693',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-044.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_694',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-045.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_695',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-046.xht',
		'arr': ['*'],
		'num': 'test_css_696',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-047.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_697',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-048.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_698',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-049.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_699',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-050.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_700',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-051.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_701',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-052.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_702',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-053.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_703',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-054.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_704',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-055.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_705',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-056.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_706',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-057.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_707',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-058.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_708',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-059.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_709',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-060.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_710',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-061.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_711',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-062.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_712',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-063.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_713',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-064.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_714',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-065.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_715',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-066.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_716',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-067.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_717',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-068.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_718',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-069.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_719',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-070.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_720',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-071.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_721',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-072.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_722',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-073.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_723',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-074.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_724',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-075.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_725',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-076.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_726',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-077.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_727',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-078.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_728',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-079.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_729',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-080.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_730',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-081.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_731',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-082.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_732',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-083.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_733',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-084.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_734',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-085.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_735',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-086.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_736',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-087.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_737',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-088.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_738',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-089.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_739',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-090.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_740',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-091.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_741',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-092.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_742',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-093.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_743',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-094.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_744',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-095.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_745',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-096.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_746',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-097.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_747',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-098.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_748',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-099.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_749',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-100.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_750',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-101.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_751',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-102.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_752',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-103.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_753',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-104.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_754',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-105.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_755',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-106.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_756',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-107.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_757',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-108.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_758',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-109.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_759',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-110.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_760',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-111.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_761',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-112.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_762',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-113.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_763',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-114.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_764',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-115.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_765',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-116.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_766',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-117.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_767',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-118.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_768',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-119.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_769',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-120.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_770',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-121.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_771',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-122.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_772',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-123.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_773',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-124.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_774',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-125.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_775',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-126.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_776',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-127.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_777',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-128.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_778',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-129.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_779',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-130.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_780',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-131.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_781',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-132.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_782',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-133.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_783',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-134.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_784',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-135.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_785',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-136.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_786',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-137.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_787',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-138.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_788',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-139.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_789',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-140.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_790',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-141.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_791',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-142.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_792',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-143.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_793',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-144.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_794',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-145.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_795',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-174.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_796',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-175.xht',
		'arr': ['*'],
		'num': 'test_css_797',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-applies-to-001.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_798',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-applies-to-002.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_799',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-applies-to-003.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_800',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-applies-to-004.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_801',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-applies-to-005.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_802',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-applies-to-006.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_803',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-applies-to-007.xht',
		'arr': ['//*[@id="cell"]', '*'],
		'num': 'test_css_804',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-applies-to-009.xht',
		'arr': ['*'],
		'num': 'test_css_805',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-applies-to-012.xht',
		'arr': ['*'],
		'num': 'test_css_806',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-applies-to-013.xht',
		'arr': ['//*[@id="table"]', '*'],
		'num': 'test_css_807',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-applies-to-014.xht',
		'arr': ['//*[@id="table"]', '*'],
		'num': 'test_css_808',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-color-applies-to-015.xht',
		'arr': ['//*[@id="row"]', '*'],
		'num': 'test_css_809',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-style-001.xht',
		'arr': ['*'],
		'num': 'test_css_810',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-style-002.xht',
		'arr': ['*'],
		'num': 'test_css_811',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-style-005.xht',
		'arr': ['*'],
		'num': 'test_css_812',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-width-001.xht',
		'arr': ['*'],
		'num': 'test_css_813',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-width-002.xht',
		'arr': ['*'],
		'num': 'test_css_814',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-width-003.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_815',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-width-004.xht',
		'arr': ['*'],
		'num': 'test_css_816',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-width-005.xht',
		'arr': ['*'],
		'num': 'test_css_817',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-width-006.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_818',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-width-007.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_819',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-width-012.xht',
		'arr': ['//*[@id="span2"]', '*'],
		'num': 'test_css_820',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-width-013.xht',
		'arr': ['*'],
		'num': 'test_css_821',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-width-015.xht',
		'arr': ['*'],
		'num': 'test_css_822',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-width-016.xht',
		'arr': ['*'],
		'num': 'test_css_823',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-width-017.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_824',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-width-018.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_825',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-width-023.xht',
		'arr': ['//*[@id="span2"]', '*'],
		'num': 'test_css_826',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-width-024.xht',
		'arr': ['*'],
		'num': 'test_css_827',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-width-025.xht',
		'arr': ['//*[@id="div1"]', '*'],
		'num': 'test_css_828',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-width-026.xht',
		'arr': ['*'],
		'num': 'test_css_829',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-width-027.xht',
		'arr': ['*'],
		'num': 'test_css_830',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-width-028.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_831',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-width-029.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_832',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-width-034.xht',
		'arr': ['//*[@id="span2"]', '*'],
		'num': 'test_css_833',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-width-035.xht',
		'arr': ['*'],
		'num': 'test_css_834',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-width-037.xht',
		'arr': ['*'],
		'num': 'test_css_835',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-width-038.xht',
		'arr': ['*'],
		'num': 'test_css_836',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-width-039.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_837',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-width-040.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_838',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-width-045.xht',
		'arr': ['//*[@id="span2"]', '*'],
		'num': 'test_css_839',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-width-046.xht',
		'arr': ['*'],
		'num': 'test_css_840',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-width-048.xht',
		'arr': ['*'],
		'num': 'test_css_841',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-width-049.xht',
		'arr': ['*'],
		'num': 'test_css_842',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-width-050.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_843',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-width-051.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_844',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-width-056.xht',
		'arr': ['//*[@id="span2"]', '*'],
		'num': 'test_css_845',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-width-057.xht',
		'arr': ['*'],
		'num': 'test_css_846',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-width-058.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_847',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-width-059.xht',
		'arr': ['*'],
		'num': 'test_css_848',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-width-060.xht',
		'arr': ['*'],
		'num': 'test_css_849',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-width-061.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_850',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-width-062.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_851',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-width-067.xht',
		'arr': ['//*[@id="span2"]', '*'],
		'num': 'test_css_852',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-width-068.xht',
		'arr': ['*'],
		'num': 'test_css_853',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-width-069.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_854',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-width-070.xht',
		'arr': ['*'],
		'num': 'test_css_855',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-width-071.xht',
		'arr': ['*'],
		'num': 'test_css_856',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-width-072.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_857',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-width-073.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_858',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-width-078.xht',
		'arr': ['//*[@id="span2"]', '*'],
		'num': 'test_css_859',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-width-079.xht',
		'arr': ['*'],
		'num': 'test_css_860',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-width-080.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_861',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-width-081.xht',
		'arr': ['*'],
		'num': 'test_css_862',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-width-082.xht',
		'arr': ['*'],
		'num': 'test_css_863',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-width-083.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_864',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-width-084.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_865',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-width-089.xht',
		'arr': ['*'],
		'num': 'test_css_866',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-width-090.xht',
		'arr': ['*'],
		'num': 'test_css_867',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-width-091.xht',
		'arr': ['*'],
		'num': 'test_css_868',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-width-095.xht',
		'arr': ['*'],
		'num': 'test_css_869',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-width-applies-to-001.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_870',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-width-applies-to-002.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_871',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-width-applies-to-003.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_872',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-width-applies-to-004.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_873',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-width-applies-to-005.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_874',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-width-applies-to-006.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_875',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-width-applies-to-007.xht',
		'arr': ['//*[@id="cell"]', '*'],
		'num': 'test_css_876',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-width-applies-to-009.xht',
		'arr': ['*'],
		'num': 'test_css_877',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-width-applies-to-012.xht',
		'arr': ['*'],
		'num': 'test_css_878',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-width-applies-to-013.xht',
		'arr': ['//*[@id="table"]', '*'],
		'num': 'test_css_879',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-width-applies-to-014.xht',
		'arr': ['//*[@id="table"]', '*'],
		'num': 'test_css_880',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-bottom-width-applies-to-015.xht',
		'arr': ['//*[@id="table"]', '*'],
		'num': 'test_css_881',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-color-001.xht',
		'arr': ['*'],
		'num': 'test_css_882',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-color-005.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_883',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-color-006.xht',
		'arr': ['*'],
		'num': 'test_css_884',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-color-010.xht',
		'arr': ['*'],
		'num': 'test_css_885',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-color-011.xht',
		'arr': ['*'],
		'num': 'test_css_886',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-color-012.xht',
		'arr': ['*'],
		'num': 'test_css_887',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-color-applies-to-001.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_888',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-color-applies-to-002.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_889',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-color-applies-to-003.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_890',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-color-applies-to-004.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_891',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-color-applies-to-005.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_892',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-color-applies-to-006.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_893',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-color-applies-to-007.xht',
		'arr': ['//*[@id="cell"]', '*'],
		'num': 'test_css_894',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-color-applies-to-009.xht',
		'arr': ['*'],
		'num': 'test_css_895',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-color-applies-to-012.xht',
		'arr': ['//*[@id="inline-block"]', '*'],
		'num': 'test_css_896',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-color-applies-to-013.xht',
		'arr': ['//*[@id="table"]', '*'],
		'num': 'test_css_897',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-color-applies-to-014.xht',
		'arr': ['//*[@id="table"]', '*'],
		'num': 'test_css_898',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-color-applies-to-015.xht',
		'arr': ['//*[@id="row"]', '*'],
		'num': 'test_css_899',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-color-shorthand-001.xht',
		'arr': ['*'],
		'num': 'test_css_900',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-conflict-style-101.xht',
		'arr': ['*'],
		'num': 'test_css_901',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-conflict-style-102.xht',
		'arr': ['*'],
		'num': 'test_css_902',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-conflict-style-103.xht',
		'arr': ['*'],
		'num': 'test_css_903',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-conflict-style-104.xht',
		'arr': ['*'],
		'num': 'test_css_904',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-conflict-style-105.xht',
		'arr': ['*'],
		'num': 'test_css_905',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-conflict-style-106.xht',
		'arr': ['*'],
		'num': 'test_css_906',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-dynamic-001.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_907',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-dynamic-002.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_908',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-001.xht',
		'arr': ['*'],
		'num': 'test_css_909',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-003.xht',
		'arr': ['*'],
		'num': 'test_css_910',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-005.xht',
		'arr': ['*'],
		'num': 'test_css_911',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-006.xht',
		'arr': ['*'],
		'num': 'test_css_912',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-008.xht',
		'arr': ['*'],
		'num': 'test_css_913',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-018.xht',
		'arr': ['//*[@id="div1"]', '*'],
		'num': 'test_css_914',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-applies-to-001.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_915',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-applies-to-002.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_916',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-applies-to-003.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_917',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-applies-to-004.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_918',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-applies-to-005.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_919',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-applies-to-006.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_920',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-applies-to-007.xht',
		'arr': ['//*[@id="cell"]', '*'],
		'num': 'test_css_921',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-applies-to-009.xht',
		'arr': ['*'],
		'num': 'test_css_922',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-applies-to-012.xht',
		'arr': ['*'],
		'num': 'test_css_923',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-applies-to-013.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_924',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-applies-to-014.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_925',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-applies-to-015.xht',
		'arr': ['//*[@id="row"]', '*'],
		'num': 'test_css_926',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-001.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_927',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-002.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_928',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-003.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_929',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-004.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_930',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-005.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_931',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-006.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_932',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-007.xht',
		'arr': ['*'],
		'num': 'test_css_933',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-008.xht',
		'arr': ['*'],
		'num': 'test_css_934',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-009.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_935',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-010.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_936',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-011.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_937',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-012.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_938',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-013.xht',
		'arr': ['*'],
		'num': 'test_css_939',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-014.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_940',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-015.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_941',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-016.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_942',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-017.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_943',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-018.xht',
		'arr': ['*'],
		'num': 'test_css_944',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-019.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_945',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-020.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_946',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-021.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_947',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-022.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_948',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-023.xht',
		'arr': ['*'],
		'num': 'test_css_949',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-024.xht',
		'arr': ['*'],
		'num': 'test_css_950',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-025.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_951',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-026.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_952',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-027.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_953',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-028.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_954',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-029.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_955',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-030.xht',
		'arr': ['*'],
		'num': 'test_css_956',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-031.xht',
		'arr': ['*'],
		'num': 'test_css_957',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-032.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_958',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-033.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_959',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-034.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_960',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-035.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_961',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-036.xht',
		'arr': ['*'],
		'num': 'test_css_962',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-037.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_963',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-038.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_964',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-039.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_965',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-040.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_966',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-041.xht',
		'arr': ['*'],
		'num': 'test_css_967',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-042.xht',
		'arr': ['*'],
		'num': 'test_css_968',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-043.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_969',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-044.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_970',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-045.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_971',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-046.xht',
		'arr': ['*'],
		'num': 'test_css_972',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-047.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_973',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-048.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_974',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-049.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_975',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-050.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_976',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-051.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_977',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-052.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_978',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-053.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_979',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-054.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_980',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-055.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_981',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-056.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_982',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-057.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_983',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-058.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_984',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-059.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_985',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-060.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_986',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-061.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_987',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-062.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_988',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-063.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_989',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-064.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_990',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-065.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_991',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-066.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_992',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-067.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_993',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-068.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_994',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-069.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_995',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-070.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_996',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-071.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_997',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-072.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_998',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-073.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_999',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-074.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_1000',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-075.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_1001',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-076.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_1002',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-077.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_1003',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-078.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_1004',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-079.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_1005',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-080.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_1006',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-081.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_1007',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-082.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_1008',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-083.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_1009',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-084.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_1010',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-085.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_1011',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-086.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_1012',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-087.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_1013',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-088.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_1014',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-089.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_1015',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-090.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_1016',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-091.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_1017',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-092.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_1018',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-093.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_1019',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-094.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_1020',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-095.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_1021',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-096.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_1022',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-097.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_1023',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-098.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_1024',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-099.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_1025',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-100.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_1026',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-101.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_1027',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-102.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_1028',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-103.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_1029',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-104.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_1030',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-105.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_1031',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-106.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_1032',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-107.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_1033',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-108.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_1034',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-109.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_1035',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-110.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_1036',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-111.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_1037',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-112.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_1038',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-113.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_1039',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-114.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_1040',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-115.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_1041',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-116.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_1042',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-117.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_1043',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-118.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_1044',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-119.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_1045',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-120.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_1046',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-121.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_1047',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-122.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_1048',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-123.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_1049',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-124.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_1050',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-125.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_1051',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-126.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_1052',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-127.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_1053',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-128.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_1054',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-129.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_1055',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-130.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_1056',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-131.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_1057',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-132.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_1058',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-133.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_1059',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-134.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_1060',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-135.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_1061',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-136.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_1062',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-137.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_1063',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-138.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_1064',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-139.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_1065',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-140.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_1066',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-141.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_1067',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-142.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_1068',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-143.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_1069',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-144.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_1070',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-145.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_1071',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-174.xht',
		'arr': ['*'],
		'num': 'test_css_1072',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-175.xht',
		'arr': ['*'],
		'num': 'test_css_1073',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-applies-to-001.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_1074',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-applies-to-002.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_1075',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-applies-to-003.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_1076',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-applies-to-004.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_1077',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-applies-to-005.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_1078',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-applies-to-006.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_1079',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-applies-to-007.xht',
		'arr': ['//*[@id="row"]', '*'],
		'num': 'test_css_1080',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-applies-to-009.xht',
		'arr': ['*'],
		'num': 'test_css_1081',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-applies-to-012.xht',
		'arr': ['//*[@id="inline-block"]', '*'],
		'num': 'test_css_1082',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-applies-to-013.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_1083',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-applies-to-014.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_1084',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-color-applies-to-015.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_1085',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-style-001.xht',
		'arr': ['*'],
		'num': 'test_css_1086',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-style-002.xht',
		'arr': ['*'],
		'num': 'test_css_1087',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-style-005.xht',
		'arr': ['*'],
		'num': 'test_css_1088',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-width-001.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_1089',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-width-002.xht',
		'arr': ['*'],
		'num': 'test_css_1090',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-width-003.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_1091',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-width-004.xht',
		'arr': ['*'],
		'num': 'test_css_1092',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-width-005.xht',
		'arr': ['*'],
		'num': 'test_css_1093',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-width-006.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_1094',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-width-007.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_1095',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-width-012.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_1096',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-width-013.xht',
		'arr': ['*'],
		'num': 'test_css_1097',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-width-015.xht',
		'arr': ['*'],
		'num': 'test_css_1098',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-width-016.xht',
		'arr': ['*'],
		'num': 'test_css_1099',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-width-017.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_1100',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-width-018.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_1101',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-width-023.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_1102',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-width-024.xht',
		'arr': ['*'],
		'num': 'test_css_1103',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-width-025.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_1104',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-width-026.xht',
		'arr': ['*'],
		'num': 'test_css_1105',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-width-027.xht',
		'arr': ['*'],
		'num': 'test_css_1106',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-width-028.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_1107',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-width-029.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_1108',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-width-034.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_1109',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-width-035.xht',
		'arr': ['*'],
		'num': 'test_css_1110',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-width-037.xht',
		'arr': ['*'],
		'num': 'test_css_1111',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-width-038.xht',
		'arr': ['*'],
		'num': 'test_css_1112',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-width-039.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_1113',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-width-040.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_1114',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-width-045.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_1115',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-width-046.xht',
		'arr': ['*'],
		'num': 'test_css_1116',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-width-048.xht',
		'arr': ['*'],
		'num': 'test_css_1117',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-width-049.xht',
		'arr': ['*'],
		'num': 'test_css_1118',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-width-050.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_1119',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-width-051.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_1120',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-width-056.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_1121',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-width-057.xht',
		'arr': ['*'],
		'num': 'test_css_1122',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-width-058.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_1123',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-width-059.xht',
		'arr': ['*'],
		'num': 'test_css_1124',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-width-060.xht',
		'arr': ['*'],
		'num': 'test_css_1125',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-width-061.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_1126',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-width-062.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_1127',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-width-067.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_1128',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-width-068.xht',
		'arr': ['*'],
		'num': 'test_css_1129',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-width-069.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_1130',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-width-070.xht',
		'arr': ['*'],
		'num': 'test_css_1131',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-width-071.xht',
		'arr': ['*'],
		'num': 'test_css_1132',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-width-072.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_1133',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-width-073.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_1134',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-width-079.xht',
		'arr': ['*'],
		'num': 'test_css_1135',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-width-080.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_1136',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-width-081.xht',
		'arr': ['*'],
		'num': 'test_css_1137',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-width-082.xht',
		'arr': ['*'],
		'num': 'test_css_1138',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-width-083.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_1139',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-width-084.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_1140',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-width-089.xht',
		'arr': ['*'],
		'num': 'test_css_1141',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-width-090.xht',
		'arr': ['*'],
		'num': 'test_css_1142',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-width-091.xht',
		'arr': ['*'],
		'num': 'test_css_1143',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-width-095.xht',
		'arr': ['*'],
		'num': 'test_css_1144',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-width-applies-to-001.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_1145',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-width-applies-to-002.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_1146',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-width-applies-to-003.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_1147',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-width-applies-to-004.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_1148',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-width-applies-to-005.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_1149',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-width-applies-to-006.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_1150',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-width-applies-to-007.xht',
		'arr': ['//*[@id="cell"]', '*'],
		'num': 'test_css_1151',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-width-applies-to-009.xht',
		'arr': ['*'],
		'num': 'test_css_1152',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-width-applies-to-012.xht',
		'arr': ['//*[@id="inline-block"]', '*'],
		'num': 'test_css_1153',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-width-applies-to-013.xht',
		'arr': ['//*[@id="table"]', '*'],
		'num': 'test_css_1154',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-width-applies-to-014.xht',
		'arr': ['//*[@id="table"]', '*'],
		'num': 'test_css_1155',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-left-width-applies-to-015.xht',
		'arr': ['//*[@id="row"]', '*'],
		'num': 'test_css_1156',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-001.xht',
		'arr': ['*'],
		'num': 'test_css_1157',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-003.xht',
		'arr': ['*'],
		'num': 'test_css_1158',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-005.xht',
		'arr': ['*'],
		'num': 'test_css_1159',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-006.xht',
		'arr': ['*'],
		'num': 'test_css_1160',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-008.xht',
		'arr': ['*'],
		'num': 'test_css_1161',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-018.xht',
		'arr': ['//*[@id="div1"]', '*'],
		'num': 'test_css_1162',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-applies-to-001.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_1163',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-applies-to-002.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_1164',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-applies-to-003.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_1165',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-applies-to-004.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_1166',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-applies-to-005.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_1167',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-applies-to-006.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_1168',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-applies-to-007.xht',
		'arr': ['//*[@id="cell"]', '*'],
		'num': 'test_css_1169',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-applies-to-009.xht',
		'arr': ['*'],
		'num': 'test_css_1170',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-applies-to-012.xht',
		'arr': ['//*[@id="inline-block"]', '*'],
		'num': 'test_css_1171',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-applies-to-013.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_1172',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-applies-to-014.xht',
		'arr': ['//*[@id="test"]', '*'],
		'num': 'test_css_1173',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-applies-to-015.xht',
		'arr': ['//*[@id="row"]', '*'],
		'num': 'test_css_1174',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-001.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="top"]'],
		'num': 'test_css_1175',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-002.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="top"]'],
		'num': 'test_css_1176',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-003.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="top"]'],
		'num': 'test_css_1177',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-004.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="top"]'],
		'num': 'test_css_1178',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-005.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="top"]'],
		'num': 'test_css_1179',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-006.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="top"]'],
		'num': 'test_css_1180',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-007.xht',
		'arr': ['*'],
		'num': 'test_css_1181',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-008.xht',
		'arr': ['*'],
		'num': 'test_css_1182',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-009.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="top"]'],
		'num': 'test_css_1183',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-010.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="top"]'],
		'num': 'test_css_1184',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-011.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="top"]'],
		'num': 'test_css_1185',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-012.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="top"]'],
		'num': 'test_css_1186',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-013.xht',
		'arr': ['*'],
		'num': 'test_css_1187',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-014.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="top"]'],
		'num': 'test_css_1188',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-015.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="top"]'],
		'num': 'test_css_1189',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-016.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="top"]'],
		'num': 'test_css_1190',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-017.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="top"]'],
		'num': 'test_css_1191',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-018.xht',
		'arr': ['*'],
		'num': 'test_css_1192',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-019.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="top"]'],
		'num': 'test_css_1193',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-020.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="top"]'],
		'num': 'test_css_1194',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-021.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="top"]'],
		'num': 'test_css_1195',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-022.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="top"]'],
		'num': 'test_css_1196',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-023.xht',
		'arr': ['*'],
		'num': 'test_css_1197',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-024.xht',
		'arr': ['*'],
		'num': 'test_css_1198',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-025.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="top"]'],
		'num': 'test_css_1199',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-026.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="top"]'],
		'num': 'test_css_1200',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-027.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="top"]'],
		'num': 'test_css_1201',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-028.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="top"]'],
		'num': 'test_css_1202',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-029.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="top"]'],
		'num': 'test_css_1203',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-030.xht',
		'arr': ['*'],
		'num': 'test_css_1204',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-031.xht',
		'arr': ['*'],
		'num': 'test_css_1205',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-032.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="top"]'],
		'num': 'test_css_1206',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-033.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="top"]'],
		'num': 'test_css_1207',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-034.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="top"]'],
		'num': 'test_css_1208',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-035.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="top"]'],
		'num': 'test_css_1209',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-036.xht',
		'arr': ['*'],
		'num': 'test_css_1210',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-037.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="top"]'],
		'num': 'test_css_1211',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-038.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="top"]'],
		'num': 'test_css_1212',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-039.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="top"]'],
		'num': 'test_css_1213',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-040.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="top"]'],
		'num': 'test_css_1214',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-041.xht',
		'arr': ['*'],
		'num': 'test_css_1215',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-042.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="top"]'],
		'num': 'test_css_1216',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-043.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="top"]'],
		'num': 'test_css_1217',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-044.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="top"]'],
		'num': 'test_css_1218',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-045.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="top"]'],
		'num': 'test_css_1219',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-046.xht',
		'arr': ['*'],
		'num': 'test_css_1220',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-047.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="top"]'],
		'num': 'test_css_1221',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-048.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="top"]'],
		'num': 'test_css_1222',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-049.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="upper-square"]'],
		'num': 'test_css_1223',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-050.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="top"]'],
		'num': 'test_css_1224',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-051.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="top"]'],
		'num': 'test_css_1225',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-052.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="upper-square"]'],
		'num': 'test_css_1226',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-053.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="upper-square"]'],
		'num': 'test_css_1227',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-054.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="upper-square"]'],
		'num': 'test_css_1228',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-055.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="top"]'],
		'num': 'test_css_1229',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-056.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="top"]'],
		'num': 'test_css_1230',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-057.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="top"]'],
		'num': 'test_css_1231',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-058.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="top"]'],
		'num': 'test_css_1232',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-059.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="top"]'],
		'num': 'test_css_1233',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-060.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="top"]'],
		'num': 'test_css_1234',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-061.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="top"]'],
		'num': 'test_css_1235',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-062.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="top"]'],
		'num': 'test_css_1236',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-063.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="top"]'],
		'num': 'test_css_1237',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-064.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="top"]'],
		'num': 'test_css_1238',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-065.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="top"]'],
		'num': 'test_css_1239',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-066.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="top"]'],
		'num': 'test_css_1240',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-067.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="top"]'],
		'num': 'test_css_1241',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-068.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="top"]'],
		'num': 'test_css_1242',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-069.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="top"]'],
		'num': 'test_css_1243',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-070.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="upper-square"]'],
		'num': 'test_css_1244',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-071.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="top"]'],
		'num': 'test_css_1245',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-072.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="top"]'],
		'num': 'test_css_1246',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-073.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="upper-square"]'],
		'num': 'test_css_1247',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-074.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="upper-square"]'],
		'num': 'test_css_1248',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-075.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="upper-square"]'],
		'num': 'test_css_1249',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-076.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="top"]'],
		'num': 'test_css_1250',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-077.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="top"]'],
		'num': 'test_css_1251',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-078.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="top"]'],
		'num': 'test_css_1252',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-079.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="top"]'],
		'num': 'test_css_1253',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-080.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="top"]'],
		'num': 'test_css_1254',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-081.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="top"]'],
		'num': 'test_css_1255',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-082.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="top"]'],
		'num': 'test_css_1256',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-083.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="top"]'],
		'num': 'test_css_1257',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-084.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="top"]'],
		'num': 'test_css_1258',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-085.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="top"]'],
		'num': 'test_css_1259',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-086.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="top"]'],
		'num': 'test_css_1260',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-087.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="top"]'],
		'num': 'test_css_1261',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-088.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="top"]'],
		'num': 'test_css_1262',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-089.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="top"]'],
		'num': 'test_css_1263',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-090.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="upper-square"]'],
		'num': 'test_css_1264',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-091.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="top"]'],
		'num': 'test_css_1265',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-092.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="top"]'],
		'num': 'test_css_1266',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-093.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="upper-square"]'],
		'num': 'test_css_1267',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-094.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="upper-square"]'],
		'num': 'test_css_1268',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-095.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="upper-square"]'],
		'num': 'test_css_1269',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-096.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="top"]'],
		'num': 'test_css_1270',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-097.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="top"]'],
		'num': 'test_css_1271',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-098.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="top"]'],
		'num': 'test_css_1272',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-099.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="top"]'],
		'num': 'test_css_1273',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-100.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="top"]'],
		'num': 'test_css_1274',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-101.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="top"]'],
		'num': 'test_css_1275',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-102.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="top"]'],
		'num': 'test_css_1276',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-103.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="top"]'],
		'num': 'test_css_1277',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-104.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="top"]'],
		'num': 'test_css_1278',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-105.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="top"]'],
		'num': 'test_css_1279',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-106.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="top"]'],
		'num': 'test_css_1280',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-107.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="top"]'],
		'num': 'test_css_1281',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-108.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="top"]'],
		'num': 'test_css_1282',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-109.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="top"]'],
		'num': 'test_css_1283',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-110.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="upper-square"]'],
		'num': 'test_css_1284',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-111.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="top"]'],
		'num': 'test_css_1285',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-112.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="top"]'],
		'num': 'test_css_1286',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-113.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="upper-square"]'],
		'num': 'test_css_1287',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-114.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="upper-square"]'],
		'num': 'test_css_1288',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-115.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="upper-square"]'],
		'num': 'test_css_1289',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-116.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="top"]'],
		'num': 'test_css_1290',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-117.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="top"]'],
		'num': 'test_css_1291',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-118.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="top"]'],
		'num': 'test_css_1292',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-119.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="top"]'],
		'num': 'test_css_1293',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-120.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="top"]'],
		'num': 'test_css_1294',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-121.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="top"]'],
		'num': 'test_css_1295',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-122.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="top"]'],
		'num': 'test_css_1296',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-123.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="top"]'],
		'num': 'test_css_1297',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-124.xht',
		'arr': ['//*[@id="reference"]', '*'],
		'num': 'test_css_1298',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-125.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="top"]'],
		'num': 'test_css_1299',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-126.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="top"]'],
		'num': 'test_css_1300',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-127.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="top"]'],
		'num': 'test_css_1301',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-128.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="top"]'],
		'num': 'test_css_1302',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-129.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="top"]'],
		'num': 'test_css_1303',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-130.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="top"]'],
		'num': 'test_css_1304',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-131.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="top"]'],
		'num': 'test_css_1305',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-132.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="top"]'],
		'num': 'test_css_1306',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-133.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="top"]'],
		'num': 'test_css_1307',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-134.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="top"]'],
		'num': 'test_css_1308',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-135.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="top"]'],
		'num': 'test_css_1309',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-136.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="top"]'],
		'num': 'test_css_1310',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-137.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="top"]'],
		'num': 'test_css_1311',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-138.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="top"]'],
		'num': 'test_css_1312',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-139.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="top"]'],
		'num': 'test_css_1313',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-140.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="top"]'],
		'num': 'test_css_1314',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-141.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="top"]'],
		'num': 'test_css_1315',
		'cla': 'css'
	},
	{
		'path': '/css/CSS2/borders/border-right-color-142.xht',
		'arr': ['//*[@id="reference"]', '//*[@id="top"]'],
		'num': 'test_css_1316',
		'cla': 'css'
	}
]