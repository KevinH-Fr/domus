module ButtonsHelper
    def custom_submit_button(form, text)
      content_tag(:div, class: "container-fluid p-0") do
        button_tag(type: "submit", class: "btn w-100 btn-outline-success fw-bold") do
          concat content_tag(:i, "", class: "fa-solid fa-xl fa-check-circle me-2")
          concat content_tag(:span, text, class: "fw-bold")
        end
      end
    end
  

  def return_model_index_button(text, path)
    content_tag(:div, class: "my-3 d-flex align-items-center") do
      link_to path, class: "btn btn-outline-secondary fw-bold d-flex align-items-center" do
          content_tag(:i, "", class: "fa-solid fa-xl fa-arrow-left") +
          content_tag(:span, text, class: "ms-2")
      end
    end
  end


  def action_links(model)
    content_tag(:div, class: "container-fluid d-flex justify-content-end") do
      link_to(model, class: "btn btn-sm btn-outline-primary") do
        content_tag(:i, "", class: "fas fa-folder-open")
      end +
      link_to(edit_polymorphic_path(model), class: "btn btn-sm btn-outline-secondary mx-1") do
        content_tag(:i, "", class: "fas fa-edit")
      end +
      button_to(model, method: :delete, class: "btn btn-sm btn-outline-danger") do
        content_tag(:i, "", class: "fas fa-trash-alt")
      end
    end
  end

end
