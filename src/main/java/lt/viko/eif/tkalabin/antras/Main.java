package lt.viko.eif.tkalabin.antras;
import org.apache.fop.apps.*;
import javax.xml.transform.TransformerException;
import java.io.IOException;


public class Main {
    public static void main(String[] args) {
        {
            try {
                Converter.convertToPDF();
            } catch (FOPException | IOException | TransformerException e) {
                e.printStackTrace();
            }
        }


    }
}
