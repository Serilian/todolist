package pl.filiphagno.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import pl.filiphagno.model.TodoData;
import pl.filiphagno.util.Mappings;
import pl.filiphagno.util.ViewNames;

@Controller
public class TodoItemController {

    @ModelAttribute
    public TodoData todoData() {
        return new TodoData();
    }

    @GetMapping(Mappings.ITEMS)
    public String items() {
        return ViewNames.ITEMS;
    }


}
