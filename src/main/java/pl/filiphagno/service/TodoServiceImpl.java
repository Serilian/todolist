package pl.filiphagno.service;

import org.springframework.stereotype.Service;
import pl.filiphagno.model.TodoData;
import pl.filiphagno.model.TodoItem;


@Service
public class TodoServiceImpl implements TodoItemService {

    private final TodoData todoData = new TodoData();

    @Override
    public void addItem(TodoItem newItem) {
        todoData.addItem(newItem);
    }

    @Override
    public void removeItem(int id) {
        todoData.removeItem(id);
    }

    @Override
    public TodoItem getItem(int id) {
        return todoData.getItem(id);
    }

    @Override
    public void updateItem(TodoItem item) {
        todoData.updateItem(item);
    }

    @Override
    public TodoData getData() {
        return todoData;
    }
}
