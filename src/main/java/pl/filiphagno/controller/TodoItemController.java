package pl.filiphagno.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.Mapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import pl.filiphagno.model.TodoData;
import pl.filiphagno.model.TodoItem;
import pl.filiphagno.service.TodoItemService;
import pl.filiphagno.util.AttributeNames;
import pl.filiphagno.util.Mappings;
import pl.filiphagno.util.ViewNames;

import java.time.LocalDate;

@Controller
@Slf4j
public class TodoItemController {

    private final TodoItemService todoItemService;

    @Autowired
    public TodoItemController(TodoItemService itemService) {
        this.todoItemService = itemService;
    }

    @ModelAttribute
    public TodoData todoData() {
        return todoItemService.getData();
    }

    @GetMapping(Mappings.ITEMS)
    public String items() {
        return ViewNames.ITEMS;
    }

    @PostMapping(Mappings.ADDITEM)
    public String processItem(@ModelAttribute(AttributeNames.TODO_ITEM) TodoItem todoItem) {
        log.info("New Item is : {}", todoItem);
        todoItemService.addItem(todoItem);
        return "redirect:/" + Mappings.ITEMS;
    }

    @GetMapping(Mappings.ADDITEM)
    public String addEditItem(Model model) {
        TodoItem todoItem = new TodoItem("", "", LocalDate.now());
        model.addAttribute(AttributeNames.TODO_ITEM, todoItem);
        return ViewNames.ADD_ITEM;
    }

}
