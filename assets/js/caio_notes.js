$(() => {


  const createNote = (note) => {
    console.log(note)
  }

  const editNote = (note) => {
    console.log(note)
  }

  const actionAttributesMap = {
    new: {
      title: "New note",
      saveAction: createNote,
      saveMethod: "post"
    },

    edit: {
      title: "Edit note",
      saveAction: editNote,
      saveMethod: "put"
    }
  }

  $("#note-modal").on("show.bs.modal", function (event) {
    let button = $(event.relatedTarget) // Button that triggered the modal
    let action = button.data("action") // Extract info from data-* attributes
    let actionAttrs = actionAttributesMap[action]

    if (actionAttrs == undefined) { return; }

    let contents = button.data("note-contents") || ""
    let color = button.data("note-color") || "#FED84A"
    let notePath = button.data("note-path")

    let modal = $(this)
    modal.find(".modal-title").text(actionAttrs.title)
    
    let contentsField = modal.find("#note-modal__contents-field")
    contentsField.val(contents)
    contentsField.css("background-color", color)

    let colorSelector = modal.find("#note-modal__color-field")
    colorSelector.val(color) 
    colorSelector.css("background-color", color)

    let saveButton = modal.find(".modal-footer .btn-primary")
    
    let noteForm = modal.find("#note-modal__form")
    noteForm.attr("action", notePath)
    noteForm.attr("method", "post")
    noteForm.find("input[name='_method']").val(actionAttrs.saveMethod)
    // saveButton.click(event => {
    //   let contents = contentsField.val()
    //   let color = colorSelector.val()

    //   actionAttrs.saveAction({notePath: notePath, contents: contents, color: color})

    //   modal.modal("hide")
    //   saveButton.off("click")
    // })
  })

  $("#note-modal__color-field").change(function(){
    let color = $(this).val()
    $("#note-modal__contents-field").css("background-color", color)
    $("#note-modal__color-field").css("background-color", color)
  })
})