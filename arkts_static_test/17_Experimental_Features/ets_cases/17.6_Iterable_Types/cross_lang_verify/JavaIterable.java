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
 * Java equivalent of ArkTS 17.6 Iterable Types - Custom Iterable Pattern
 * Corresponds to: EXP2_17_06_001, EXP2_17_06_002, EXP2_17_06_015
 */
import java.util.Iterator;
import java.util.NoSuchElementException;

// Custom Iterable: Range produces integers from 'from' to 'to'
class Range implements Iterable<Integer> {
    private final int from;
    private final int to;

    public Range(int from, int to) {
        this.from = from;
        this.to = to;
    }

    @Override
    public Iterator<Integer> iterator() {
        return new RangeIterator(from, to);
    }

    // Separate Iterator class
    static class RangeIterator implements Iterator<Integer> {
        private int current;
        private final int end;

        RangeIterator(int current, int end) {
            this.current = current;
            this.end = end;
        }

        @Override
        public boolean hasNext() {
            return current <= end;
        }

        @Override
        public Integer next() {
            if (!hasNext())
                throw new NoSuchElementException();
            return current++;
        }
    }

    // --- Test main ---
    public static void main(String[] args) {
        // Test 1: Basic for-each with custom range
        Range r = new Range(1, 5);
        int sum = 0;
        int count = 0;
        for (int v : r) {
            sum += v;
            count++;
        }
        assert sum == 15 : "custom iterable sum failed: expected 15, got " + sum;
        assert count == 5 : "custom iterable count failed: expected 5, got " + count;

        // Test 2: Empty range
        Range emptyRange = new Range(5, 1);
        int emptyCount = 0;
        for (int v : emptyRange) {
            emptyCount++;
        }
        assert emptyCount == 0 : "empty custom iterable failed: " + emptyCount;

        // Test 3: Array (built-in iterable in Java too)
        int[] arr = {10, 20, 30};
        int arrSum = 0;
        int arrCount = 0;
        for (int x : arr) {
            arrSum += x;
            arrCount++;
        }
        assert arrSum == 60 : "array for-each sum failed: " + arrSum;
        assert arrCount == 3 : "array for-each count failed: " + arrCount;

        // Test 4: String (NOT iterable in Java — chars() is a stream)
        // Java String does NOT implement Iterable<Character>
        // Must use charAt() or chars() stream
        String s = "ArkTS";
        StringBuilder result = new StringBuilder();
        int strCount = 0;
        for (int i = 0; i < s.length(); i++) {
            result.append(s.charAt(i));
            strCount++;
        }
        assert result.toString().equals("ArkTS") : "string concat failed: " + result;
        assert strCount == 5 : "string count failed: " + strCount;

        // Test 5: Generic Iterable
        Wrapper<String> w = new Wrapper<>("hello");
        int wrapCount = 0;
        for (String val : w) {
            assert val.equals("hello") : "wrapper value failed: " + val;
            wrapCount++;
        }
        assert wrapCount == 1 : "wrapper count failed: " + wrapCount;

        System.out.println("verified");
    }
}

// Generic Iterable (corresponds to EXP2_17_06_008)
class Wrapper<E> implements Iterable<E> {
    private final E value;

    public Wrapper(E value) {
        this.value = value;
    }

    @Override
    public Iterator<E> iterator() {
        return new WrapperIterator<>(value);
    }

    static class WrapperIterator<E> implements Iterator<E> {
        private final E value;
        private boolean emitted = false;

        WrapperIterator(E value) {
            this.value = value;
        }

        @Override
        public boolean hasNext() {
            return !emitted;
        }

        @Override
        public E next() {
            if (!hasNext())
                throw new NoSuchElementException();
            emitted = true;
            return value;
        }
    }
}
