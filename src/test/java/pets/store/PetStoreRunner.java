package pets.store;

import com.intuit.karate.junit5.Karate;

public class PetStoreRunner {

    @Karate.Test
    Karate testAll(){
        return Karate.run().relativeTo(getClass());
    }

    @Karate.Test
    Karate firstTestCase(){
        return Karate.run().tags("@AddPet").relativeTo(getClass());
    }
    @Karate.Test
    Karate secondTestCase(){
        return Karate.run().tags("@UpdatePet").relativeTo(getClass());
    }
    @Karate.Test
    Karate thirdTestCase(){
        return Karate.run().tags("@FindByStatus").relativeTo(getClass());
    }
    @Karate.Test
    Karate fourthTestCase(){
        return Karate.run().tags("@Fourth").relativeTo(getClass());
    }
}
