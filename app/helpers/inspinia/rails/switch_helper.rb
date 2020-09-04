module Inspinia::Rails::SwitchHelper
  def onoff_switch(text, id, checked = false)
    content_tag :div, class: 'setings-item' do
      content_tag(:span, text) <<
      content_tag(:div, class: 'switch pull-right') do
        content_tag(:div, class: 'onoffswitch') do
          check_box_tag(id, '', checked, {class: 'onoffswitch-checkbox'}) <<
          label_tag(id, class: 'onoffswitch-label') do
            content_tag(:span, '', class: 'onoffswitch-inner') <<
            content_tag(:span, '', class: 'onoffswitch-switch')
          end
        end
      end
    end
  end
end
