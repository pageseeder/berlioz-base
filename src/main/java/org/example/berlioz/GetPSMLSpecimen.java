package org.example.berlioz;

import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.charset.Charset;

import org.pageseeder.berlioz.BerliozException;
import org.pageseeder.berlioz.content.ContentGenerator;
import org.pageseeder.berlioz.content.ContentRequest;
import org.pageseeder.berlioz.xml.XMLCopy;
import org.pageseeder.xmlwriter.XMLWriter;

public final class GetPSMLSpecimen implements ContentGenerator {

  private static final String SPECIMEN = "/org/example/berlioz/psml/specimen.psml";

  @Override
  public void process(ContentRequest req, XMLWriter xml) throws BerliozException, IOException {
    ClassLoader loader = GetPSMLSpecimen.class.getClassLoader();
    try (InputStream in = loader.getResourceAsStream(SPECIMEN)) {
      XMLCopy.copyTo(new InputStreamReader(in, Charset.forName("utf-8")), xml);
    }
  }

}
