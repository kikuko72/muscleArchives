package github.com.kikuko72.muscle.archive.web;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Nested;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

class MuscleGymnasticsTest {
    
    @Nested
    class Fixture {
        MuscleGymnastics target;
        
        @BeforeEach
        void setUp() {
            target = MuscleGymnastics.open();
        }
        
        @Test
        void canInstantiateThePage() {
            assertNotNull(target);
        }
    }
}