package com.ex.lms.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.ex.lms.entity.Book;
import com.ex.lms.repository.BookRepository;

@Service
public class BookService {

	private BookRepository bookRepository;

	public BookService(BookRepository bookRepository) {
		this.bookRepository = bookRepository;
	}

	public ModelAndView saveBook(Book book) {
		bookRepository.saveBook(book);
//		return new ModelAndView("Home");
		return new ModelAndView("redirect:/");
	}

	
	public ModelAndView updateBook(Book book) {
		bookRepository.updateBook(book);
		return new ModelAndView("redirect:find-all-books");		
	}

	public ModelAndView findBook(int bookId) {
	    Book book=bookRepository.findBook(bookId);
		return new ModelAndView("update_book","book",book);
	}

	public ModelAndView deleteBook(int bookId) {
		Book book = bookRepository.findBook(bookId);
		bookRepository.deleteBook(book);
		return new ModelAndView("redirect:find-all-books");
	}

	public ModelAndView findAllBooks() {
		List<Book> books = bookRepository.findAllBooks();
		return new ModelAndView("display_books","books",books);
	}
	
}
