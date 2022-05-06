package lt.viko.eif.tkalabin.antras;

import org.apache.fop.apps.*;

import javax.xml.transform.Result;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.sax.SAXResult;
import javax.xml.transform.stream.StreamSource;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;

public class Converter {

    public static void convertToPDF() throws IOException, FOPException, TransformerException {
        File xsltFile = new File("C:\\Users\\Truth\\Desktop\\ViKo\\3 sem\\Java\\antras\\toPdf.xsl");
        StreamSource xmlSource = new StreamSource(new File("C:\\Users\\Truth\\Desktop\\ViKo\\3 sem\\Java\\antras\\publishersForPdf.xml"));
        FopFactory fopFactory = FopFactory.newInstance(new File(".").toURI());
        FOUserAgent foUserAgent = fopFactory.newFOUserAgent();

        OutputStream out;
        out = new java.io.FileOutputStream("publishers.pdf");

        try {
            Fop fop = fopFactory.newFop(MimeConstants.MIME_PDF, foUserAgent, out);
            TransformerFactory factory = TransformerFactory.newInstance();
            Transformer transformer = factory.newTransformer(new StreamSource(xsltFile));
            Result res = new SAXResult(fop.getDefaultHandler());

            transformer.transform(xmlSource, res);
        }
        finally {
            out.close();
        }
    }
}
