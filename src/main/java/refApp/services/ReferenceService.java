package refApp.services;

import java.util.List;
import java.util.Map;
import org.springframework.stereotype.Service;
import refApp.domain.Article;
import refApp.domain.Author;
import refApp.domain.Book;
import refApp.domain.Inproceedings;
import refApp.domain.Reference;

/**
 * Service class for references
 */
@Service
public class ReferenceService {

    /**
     * Method for adding a reference
     *
     * @param allReferences list where the references are added // HUOM! Tämä
     * muutettava kun tietokantaan tallennus toiminnassa
     * @param params user given values for a reference
     */
    public void addReference(List<Reference> allReferences, Map<String, String> params) {
        switch (params.get("type")) {
            case "article":
                allReferences.add(new Article(params.get("title"), new Author(params.get("author")), params.get("journal"), params.get("year"), params.get("month"), params.get("volume"), params.get("number"), params.get("pages_start").length() > 0 ? formPageNo(params.get("pages_start"), params.get("pages_end")) : null, params.get("note"), params.get("reference_id")));
                break;
            case "book":
                allReferences.add(new Book(params.get("title"), new Author(params.get("author")), params.get("publisher"), params.get("year"), params.get("month"), params.get("edition"), params.get("volume"), params.get("series"), params.get("address"), params.get("note"), params.get("reference_id")));
                break;
            case "inproceedings":
                allReferences.add(new Inproceedings(params.get("title"), new Author(params.get("author")), params.get("book_title"), params.get("year"), params.get("month"), params.get("editor"), params.get("volume"), params.get("series"), params.get("pages_start").length() > 0 ? formPageNo(params.get("pages_start"), params.get("pages_end")) : null, params.get("organization"), params.get("publisher"), params.get("address"), params.get("note"), params.get("reference_id")));
                break;
        }
    }

    private String formPageNo(String start, String end) {
        return start + "-" + end;
    }
}
