/*
 * Copyright (c) 2021-2026 Huawei Device Co., Ltd.
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
/**
 * Java equivalent for ArkTS 17.5 Indexable Types
 * Java has NO direct equivalent of indexable types (operator overloading).
 * Closest analogies:
 *   - Array indexing: arr[i] (built-in, not user-definable)
 *   - List.get(i) / List.set(i, v) (explicit method calls)
 *   - Map.get(k) / Map.put(k, v) (explicit method calls)
 *
 * This file demonstrates the closest Java patterns.
 *
 * @since 2025
 */
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

// Case 1: Array-like indexing - Java uses array syntax (built-in, not user-definable)
class BasicArrayIndex {
    /**
     * Demo array indexing
     */
    public static void demo() {
        String[] arr = {"alpha", "beta", "gamma"};
        String v0 = arr[0];           // read - built-in array syntax
        arr[1] = "delta";             // write - built-in array syntax
        System.out.println("arr[0]=" + v0 + " arr[1]=" + arr[1]);
    }
}

// Case 2: String key indexing - Java uses Map.get/put (no [] syntax)
class StringMapIndex {
    private Map<String, String> store = new HashMap<>();

    /**
     * Get value by string key
     * @param key string key
     * @return value
     */
    public String get(String key) {
        return store.getOrDefault(key, "unknown");
    }

    /**
     * Set value by string key
     */
    public void set(String key, String value) {
        store.put(key, value);
    }

    /**
     * Demo string map indexing
     */
    public static void demo() {
        StringMapIndex map = new StringMapIndex();
        map.set("name", "test");
        String v = map.get("name");   // must use get(), not []
        System.out.println("map.name=" + v);
    }
}

// Case 3: Generic indexable - Java uses List<T>.get(i)/set(i,v)
class GenericStore<T> {
    private List<T> items = new ArrayList<>();

    /**
     * Get element by index
     */
    public T get(int index) {
        return items.get(index);
    }

    /**
     * Set element by index
     */
    public void set(int index, T value) {
        while (items.size() <= index) { items.add(null); }
        items.set(index, value);
    }

    /**
     * Demo generic store
     */
    public static void demo() {
        GenericStore<Integer> numStore = new GenericStore<>();
        numStore.set(0, 100);
        numStore.set(1, 200);
        System.out.println("numStore[0]=" + numStore.get(0));

        GenericStore<String> strStore = new GenericStore<>();
        strStore.set(0, "first");
        strStore.set(1, "second");
        System.out.println("strStore[0]=" + strStore.get(0));
    }
}

/**
 * Java equivalent for ArkTS 17.5 Indexable Types
 */
public class EXP2_17_05_Indexable_Types {
    public static void main(String[] args) {
        System.out.println("=== Java: No indexable types / operator overloading ===");
        System.out.println("Java uses explicit method calls (get/set) instead of [] syntax");
        System.out.println();

        BasicArrayIndex.demo();
        StringMapIndex.demo();
        GenericStore.demo();

        System.out.println();
        System.out.println("CONCLUSION: Java has NO user-definable indexing syntax.");
        System.out.println("Closest: array[i] (built-in), list.get(i), map.get(k)");
        System.out.println("verified");
    }
}
