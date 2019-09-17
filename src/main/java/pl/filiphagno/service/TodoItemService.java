package pl.filiphagno.service;

import pl.filiphagno.model.TodoData;
import pl.filiphagno.model.TodoItem;

public interface TodoItemService {

    void addItem(TodoItem item);
    void removeItem(int id);
    TodoItem getItem(int id);
    void updateItem(TodoItem item);
    TodoData getData();
}
