import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class PetCounter {
    public static Map<String, Integer> countPetNames(List<Map<String, Object>> pets) {
        Map<String, Integer> nameCount = new HashMap<>();
        for (Map<String, Object> pet : pets) {
            String name = (String) pet.get("name");
            nameCount.put(name, nameCount.getOrDefault(name, 0) + 1);
        }
        return nameCount;
    }
}