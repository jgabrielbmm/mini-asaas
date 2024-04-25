package mini

class FormController {

    def sendFormData() {
        println params
        flash.sentForm = true
        redirect(action: "create")
    }

    def create(){
        // return [:]
    }

}