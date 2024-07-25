package com.ex.lms.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ex.lms.entity.Book;
import com.ex.lms.service.BookService;

@Controller
public class BookController {// which contains handler methods

	private BookService bookService;

	public BookController(BookService bookService) {
		this.bookService = bookService;
	}
	@RequestMapping("/home-page") // default request
	public ModelAndView homePage() {// to return model(row data) and view
		return new ModelAndView("home"); // view Name i.e String viewName
	}

	@RequestMapping("/") // default request
	public ModelAndView home() {// to return model(row data) and view
		return new ModelAndView("home"); // view Name i.e String viewName
	}

	@RequestMapping(value = "/add-book-view", method = RequestMethod.GET)
	public ModelAndView addBookView() {
		return new ModelAndView("add_book");

	}

	//saveBook
	@RequestMapping(value = "/add-book", method = RequestMethod.POST)
	public ModelAndView saveBook(Book book) {
		return bookService.saveBook(book);
	}

	@RequestMapping(value = "/update-book-view")
	public ModelAndView updateBookView(@RequestParam int bookId) {
		return bookService.findBook(bookId);

	}

	@RequestMapping(value = "/update-book")
	public ModelAndView updateBook(Book book) {
		return bookService.updateBook(book);
	}

	@RequestMapping(value = "/delete-book")
	public ModelAndView deleteBook(int bookId) {
		return bookService.deleteBook(bookId);
	}

	@RequestMapping(value = "/find-all-books")
	public ModelAndView findAllBooks() {
		return bookService.findAllBooks();
	}
}
