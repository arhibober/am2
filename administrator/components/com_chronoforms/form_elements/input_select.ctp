<div class="dragable" id="input_select">select Box</div>
<div class="element_code" id="input_select_element">
	<label id="input_select_{n}_label" class="text_label"><?php echo $element_params['label_text']; ?></label>
		<?php
		$temp_options = explode("\n", $element_params['options']);
		$element_params['options'] = array();
		foreach($temp_options as $temp_option){
			$temp_option_details = explode('=', $temp_option);
			$element_params['options'][strval($temp_option_details[0])] = trim($temp_option_details[1]);
		}
		?>
		<select name="select_{n}_input_name" id="select_{n}_input_id" >
		<?php foreach($element_params['options'] as $select_option_value => $select_option_text): ?>
		<option value="<?php echo $select_option_value; ?>"><?php echo $select_option_text; ?></option>
		<?php endforeach; ?>
		</select>
	
	<?php 
	$options = '';
	foreach($element_params['options'] as $select_option_value => $select_option_text){
		if(!empty($options)){
			$options .= "\n";
		}
		$options .= $select_option_value.'='.$select_option_text;
	}
	?>
	<input type="hidden" name="chronofield[{n}][input_select_{n}_label_text]" id="input_select_{n}_label_text" value="<?php echo $element_params['label_text']; ?>" />
    <input type="hidden" name="chronofield[{n}][input_select_{n}_input_name]" id="input_select_{n}_input_name" value="<?php echo $element_params['input_name']; ?>" />
    <input type="hidden" name="chronofield[{n}][input_select_{n}_input_id]" id="input_select_{n}_input_id" value="<?php echo $element_params['input_id']; ?>" />
    <input type="hidden" name="chronofield[{n}][input_select_{n}_selected]" id="input_select_{n}_selected" value="<?php echo $element_params['selected']; ?>" />
    <input type="hidden" name="chronofield[{n}][input_select_{n}_showempty]" id="input_select_{n}_showempty" value="<?php echo $element_params['showempty']; ?>" />
    <input type="hidden" name="chronofield[{n}][input_select_{n}_multiple]" id="input_select_{n}_multiple" value="<?php echo $element_params['multiple']; ?>" />
    <input type="hidden" name="chronofield[{n}][input_select_{n}_size]" id="input_select_{n}_size" value="<?php echo $element_params['size']; ?>" />
    <input type="hidden" name="chronofield[{n}][input_select_{n}_input_class]" id="input_select_{n}_input_class" value="<?php echo $element_params['input_class']; ?>" />
    <input type="hidden" name="chronofield[{n}][input_select_{n}_input_title]" id="input_select_{n}_input_title" value="<?php echo $element_params['input_title']; ?>" />
    <textarea name="chronofield[{n}][input_select_{n}_options]" id="input_select_{n}_options" style="display:none"><?php echo $options; ?></textarea>
    <textarea name="chronofield[{n}][input_select_{n}_validations]" id="input_select_{n}_validations" style="display:none"><?php echo $element_params['validations']; ?></textarea>
    <textarea name="chronofield[{n}][input_select_{n}_instructions]" id="input_select_{n}_instructions" style="display:none"><?php echo $element_params['instructions']; ?></textarea>
    <textarea name="chronofield[{n}][input_select_{n}_tooltip]" id="input_select_{n}_tooltip" style="display:none"><?php echo $element_params['tooltip']; ?></textarea>
    <input type="hidden" id="chronofield_id_{n}" name="chronofield_id" value="{n}" />
    <input type="hidden" name="chronofield[{n}][tag]" value="input" />
    <input type="hidden" name="chronofield[{n}][type]" value="select" />
</div>
<div class="element_config" id="input_select_element_config">
	<?php echo $PluginTabsHelper->Header(array('general' => 'General', 'validation' => 'Validation'), 'input_select_element_config_{n}'); ?>
	<?php echo $PluginTabsHelper->tabStart('general'); ?>
		<?php echo $HtmlHelper->input('input_select_{n}_input_name_config', array('type' => 'text', 'label' => 'Field Name', 'class' => 'small_input', 'value' => '')); ?>
		<?php echo $HtmlHelper->input('input_select_{n}_input_id_config', array('type' => 'text', 'label' => 'Field ID', 'class' => 'small_input', 'value' => '')); ?>
		<?php echo $HtmlHelper->input('input_select_{n}_input_class_config', array('type' => 'text', 'label' => 'Field Class', 'class' => 'small_input', 'value' => '')); ?>
		<?php echo $HtmlHelper->input('input_select_{n}_input_title_config', array('type' => 'text', 'label' => 'Field title', 'class' => 'small_input', 'value' => '')); ?>
		<?php echo $HtmlHelper->input('input_select_{n}_label_text_config', array('type' => 'text', 'label' => 'Label Text', 'class' => 'small_input', 'value' => '')); ?>
		<?php echo $HtmlHelper->input('input_select_{n}_multiple_config', array('type' => 'checkbox', 'label' => 'Multiple', 'class' => 'small_input', 'value' => '1', 'rule' => "bool")); ?>
		<?php echo $HtmlHelper->input('input_select_{n}_size_config', array('type' => 'text', 'label' => 'Size', 'class' => 'small_input', 'value' => '')); ?>
		<?php echo $HtmlHelper->input('input_select_{n}_selected_config', array('type' => 'text', 'label' => 'Selected', 'class' => 'small_input', 'value' => '', 'smalldesc' => 'The selected value by default if any.')); ?>
		<?php echo $HtmlHelper->input('input_select_{n}_showempty_config', array('type' => 'text', 'label' => 'Show Empty', 'class' => 'small_input', 'value' => '', 'smalldesc' => 'Write the text for the empty value (Please select) or leave empty for no empty value.')); ?>
		<?php echo $HtmlHelper->input('input_select_{n}_options_config', array('type' => 'textarea', 'label' => 'Options', 'rows' => 5, 'cols' => 50, 'operation' => "multi_option", 'operation_fieldtype' => "select", 'smalldesc' => 'in value=text multi line format.')); ?>
		<?php echo $HtmlHelper->input('input_select_{n}_instructions_config', array('type' => 'textarea', 'label' => 'Instructions for users', 'rows' => 5, 'cols' => 50)); ?>
		<?php echo $HtmlHelper->input('input_select_{n}_tooltip_config', array('type' => 'textarea', 'label' => 'Tooltip', 'rows' => 5, 'cols' => 50)); ?>
	<?php echo $PluginTabsHelper->tabEnd(); ?>
	<?php echo $PluginTabsHelper->tabStart('validation'); ?>
		<?php echo $HtmlHelper->input('input_select_{n}_validations_config', array('type' => 'checkbox', 'label' => 'Required', 'class' => 'small_input', 'value' => 'required', 'rule' => "split", 'splitter' => ",")); ?>
	<?php echo $PluginTabsHelper->tabEnd(); ?>
</div>