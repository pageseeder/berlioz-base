package org.example.berlioz;

import java.io.IOException;

import org.pageseeder.berlioz.BerliozException;
import org.pageseeder.berlioz.content.ContentGenerator;
import org.pageseeder.berlioz.content.ContentRequest;
import org.pageseeder.xmlwriter.XMLWriter;

/**
 * Simple content generator example.
 */
public final class HelloWorld implements ContentGenerator {

  @Override
  public void process(ContentRequest req, XMLWriter xml) throws BerliozException, IOException {
    xml.openElement("greeting");
    xml.writeText("Hello World!");
    xml.closeElement();
  }

}
