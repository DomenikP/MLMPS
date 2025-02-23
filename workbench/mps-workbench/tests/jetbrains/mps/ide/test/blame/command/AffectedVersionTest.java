/*
 * Copyright 2003-2015 JetBrains s.r.o.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package jetbrains.mps.ide.test.blame.command;

import jetbrains.mps.WorkbenchMpsTest;
import jetbrains.mps.ide.blame.command.Command;
import jetbrains.mps.ide.blame.perform.Query;
import jetbrains.mps.ide.blame.perform.Response;
import org.jdom.Element;
import org.junit.Test;

import java.io.IOException;
import java.util.HashSet;
import java.util.List;

import static org.junit.Assert.assertTrue;
import static org.junit.Assert.fail;

public class AffectedVersionTest extends WorkbenchMpsTest {
  @Test
  public void testVersion() throws IOException {
    String version = Command.getVersion();
    if (version == null) return;

    Command c = new Command();
    c.setTimeouts(5000);

    Response r = c.login(Query.ANONYMOUS);
    if (!r.isSuccess()) fail("Was not able to login anonymously");

    //check that version is in versions
    r = c.listVersions();
    if (!r.isSuccess()) {
      fail("Failed to retrieve list of versions from server");
    }
    Element e = r.getResponseXml();

    List<Element> versions = e.getChildren("version");
    HashSet<String> availableVersions = new HashSet<String>();
    for (Element v : versions) {
      availableVersions.add(v.getText());
    }
    assertTrue("version " + version + " does not exist in tracker", availableVersions.contains(version));
  }
}
