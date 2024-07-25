package com.ex.lms.repository;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.TypedQuery;

import org.springframework.stereotype.Repository;

import com.ex.lms.entity.Book;

@Repository
public class BookRepository {
	private final EntityManagerFactory factory;

	public BookRepository(EntityManagerFactory factory) {
		this.factory = factory;
	}

	public void saveBook(Book book) {
		EntityManager manager = factory.createEntityManager();
		EntityTransaction transaction = manager.getTransaction();
		transaction.begin();
		manager.persist(book);
		transaction.commit();
		manager.close();
	}

	public void updateBook(Book book) {
		EntityManager manager = factory.createEntityManager();
		EntityTransaction transaction = manager.getTransaction();
		transaction.begin();
		manager.merge(book);
		transaction.commit();
		manager.close();
	}

	public void deleteBook(Book book) {
		EntityManager manager = factory.createEntityManager();
		EntityTransaction transaction = manager.getTransaction();
		transaction.begin();
		manager.remove(manager.merge(book));
		transaction.commit();
		manager.close();
	}

	public Book findBook(int bookId) {
		EntityManager manager = factory.createEntityManager();
		Book book = manager.find(Book.class, bookId);
		manager.close();
		return book;
	}

	public List<Book> findAllBooks() {
		EntityManager manager = factory.createEntityManager();
		TypedQuery<Book> query = manager.createQuery("FROM Book", Book.class);
		List<Book> books = query.getResultList();
		return books;
	}

}
