import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

class RunnerTest {

  @Test
     Karate testAll() {
      return Karate.run().relativeTo(getClass());
    }

    @Test
    Karate testAll() {
        return Karate.run("classpath:conduitApp/feature").tags("@test1").relativeTo(getClass());
    }
}