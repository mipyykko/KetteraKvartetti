package refApp.domain;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

/**
 * Class for author
 */
@Entity
public class Author {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    private String name;

    /**
     * Constructs author with name
     * @param authorName 
     */
    public Author(String authorName) {
        this.name = authorName;
    }

    /**
     * A constructor needed by the database.
     */
    Author() {
    }

    /**
     * 
     * @return Name of the author
     */
    public String getName() {
        return name;
    }

    /**
     * Sets the name for author
     * @param n Name 
     */
    public void setName(String n) {
        this.name = n;
    }

    /**
     * 
     * @return Author in String format
     */
    @Override
    public String toString() {
        return this.getName();
    }
}
