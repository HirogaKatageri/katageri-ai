import 'dart:convert';

import 'package:test/test.dart';
import 'package:sparrow_clients/sparrow-clients.dart';

void main() {
  group('Gemini Models', () {
    test('should parse Gemini response JSON correctly', () {
      // Example JSON from the issue description
      final jsonString = '''
{
  "candidates":[
    {
      "content":{
        "parts":[
          {
            "text":"The Philippines, officially the Republic of the Philippines, is a fascinating and diverse archipelago nation located in Southeast Asia. Here's a breakdown of some key aspects:\\n\\n**Geography:**\\n\\n*   **Archipelago:** It comprises over 7,641 islands, of which about 2,000 are inhabited. The islands are grouped into three main geographical divisions: Luzon, Visayas, and Mindanao.\\n*   **Location:** Situated in the western Pacific Ocean, it's bounded by the Philippine Sea to the east, the South China Sea to the west, and the Celebes Sea to the south.\\n*   **Terrain:** The landscape varies greatly, with volcanic peaks, coastal plains, and dense rainforests. Many islands are mountainous.\\n*   **Climate:** Tropical maritime climate, generally hot and humid. It has two main seasons: wet (June-November) and dry (December-May). It's prone to typhoons and earthquakes due to its location in the Pacific Ring of Fire.\\n\\n**People and Culture:**\\n\\n*   **Population:** Over 110 million people, making it the 13th most populous country in the world.\\n*   **Ethnic Diversity:**  The population is a mix of various ethnic groups, including Austronesian (the majority), Chinese, Spanish, American, and indigenous groups.\\n*   **Languages:** Filipino (based on Tagalog) and English are the official languages. There are numerous regional languages, including Cebuano, Ilocano, Hiligaynon, and many more.\\n*   **Religion:** Predominantly Roman Catholic (around 80%), a legacy of Spanish colonization. There's also a significant Muslim minority (mostly in Mindanao), as well as various Protestant denominations and indigenous beliefs.\\n*   **Culture:** A blend of indigenous traditions, Spanish colonial influences, American influences, and Asian elements. This fusion is evident in its food, music, dance, architecture, and social customs. Filipinos are known for their hospitality, close family ties, and strong sense of community (bayanihan).\\n*   **Cuisine:** A mix of flavors influenced by Southeast Asian, Spanish, Chinese, and American cuisines. Staples include rice, seafood, pork, chicken, and vegetables. Popular dishes include adobo, sinigang, lechon, and pancit.\\n*   **Arts and Entertainment:** Rich artistic traditions in dance, music, visual arts, and literature. Popular forms of entertainment include movies, television dramas (teleseryes), and music.\\n\\n**Government and Politics:**\\n\\n*   **Form of Government:** Unitary presidential constitutional republic.\\n*   **President:**  The head of state and head of government, elected for a single six-year term.\\n*   **Legislature:** Bicameral Congress, consisting of the Senate and the House of Representatives.\\n*   **Political System:** Historically characterized by strong personalities and patronage.  The Philippines has a vibrant but sometimes turbulent democracy.\\n\\n**Economy:**\\n\\n*   **Emerging Market:** A newly industrialized country with a growing economy.\\n*   **Key Industries:** Agriculture (rice, coconuts, sugarcane, bananas), manufacturing (electronics, garments, footwear), and services (tourism, business process outsourcing).\\n*   **Remittances:**  Overseas Filipino Workers (OFWs) contribute significantly to the economy through remittances.\\n*   **Challenges:** Income inequality, poverty, corruption, infrastructure gaps, and vulnerability to natural disasters.\\n\\n**History:**\\n\\n*   **Pre-Colonial Era:**  Independent barangays (small communities) ruled by chieftains or datus. Trade relations with other Asian countries, including China and India.\\n*   **Spanish Colonization (1565-1898):**  Ferdinand Magellan landed in 1521. Miguel LÃ³pez de Legazpi established the first permanent Spanish settlement in 1565.  The Philippines was under Spanish rule for over 300 years.  The Spanish introduced Christianity, the Spanish language, and aspects of Western culture.\\n*   **Philippine Revolution (1896-1898):**  Led by figures like AndrÃ©s Bonifacio and Emilio Aguinaldo, Filipinos revolted against Spanish rule.\\n*   **American Colonization (1898-1946):**  The United States acquired the Philippines from Spain after the Spanish-American War. The Americans introduced democratic institutions, public education, and infrastructure development.\\n*   **World War II:** The Philippines was occupied by Japan during World War II.\\n*   **Independence (1946):** The Philippines gained independence from the United States on July 4, 1946.\\n*   **Post-Independence:**  Marked by political instability, economic challenges, and social unrest.  Ferdinand Marcos ruled as a dictator from 1972 to 1986.\\n*   **Modern Philippines:**  Working to strengthen its democracy, improve its economy, and address social issues.\\n\\n**Why Visit?**\\n\\n*   **Stunning Beaches:** Boracay, Palawan, Cebu, and many other islands boast pristine beaches and crystal-clear waters.\\n*   **Rich Culture and History:** Explore historic cities like Vigan and Intramuros, visit cultural sites, and experience vibrant festivals.\\n*   **Natural Wonders:**  Discover breathtaking landscapes, including the Chocolate Hills of Bohol, the rice terraces of Banaue, and the underground river of Palawan.\\n*   **Friendly People:** Filipinos are known for their warm hospitality and welcoming nature.\\n*   **Delicious Food:**  Savor a diverse and flavorful cuisine that blends Asian and Western influences.\\n*   **Affordable Travel:** The Philippines offers a relatively affordable travel experience compared to many other destinations.\\n\\nIn conclusion, the Philippines is a country of contrasts, with a rich history, diverse culture, stunning natural beauty, and resilient people. It is a vibrant and fascinating destination with something to offer every traveler.\\n"
          }
        ],
        "role":"model"
      },
      "finishReason":"STOP",
      "avgLogprobs":-0.2799620793845213
    }
  ],
  "usageMetadata":{
    "promptTokenCount":5,
    "candidatesTokenCount":1239,
    "totalTokenCount":1244,
    "promptTokensDetails":[
      {
        "modality":"TEXT",
        "tokenCount":5
      }
    ],
    "candidatesTokensDetails":[
      {
        "modality":"TEXT",
        "tokenCount":1239
      }
    ]
  },
  "modelVersion":"gemini-2.0-flash",
  "responseId":"P8wyaMSrC4yR7dcP5ZWZ2Ac"
}
      ''';

      // Parse the JSON
      final json = jsonDecode(jsonString);
      
      // Create a GeminiResponse object from the JSON
      final response = GeminiResponse.fromJson(json);
      
      // Verify the parsed data
      expect(response.candidates.length, 1);
      expect(response.modelVersion, 'gemini-2.0-flash');
      expect(response.responseId, 'P8wyaMSrC4yR7dcP5ZWZ2Ac');
      
      // Verify the first candidate
      final candidate = response.candidates[0];
      expect(candidate.finishReason, 'STOP');
      expect(candidate.avgLogprobs, -0.2799620793845213);
      
      // Verify the content
      final content = candidate.content;
      expect(content.role, 'model');
      expect(content.parts.length, 1);
      
      // Verify the first part
      final part = content.parts[0];
      expect(part.text.startsWith('The Philippines, officially the Republic of the Philippines'), true);
      
      // Verify the usage metadata
      final usageMetadata = response.usageMetadata;
      expect(usageMetadata.promptTokenCount, 5);
      expect(usageMetadata.candidatesTokenCount, 1239);
      expect(usageMetadata.totalTokenCount, 1244);
      expect(usageMetadata.promptTokensDetails.length, 1);
      expect(usageMetadata.candidatesTokensDetails.length, 1);
      
      // Verify the tokens details
      final promptTokensDetails = usageMetadata.promptTokensDetails[0];
      expect(promptTokensDetails.modality, 'TEXT');
      expect(promptTokensDetails.tokenCount, 5);
      
      final candidatesTokensDetails = usageMetadata.candidatesTokensDetails[0];
      expect(candidatesTokensDetails.modality, 'TEXT');
      expect(candidatesTokensDetails.tokenCount, 1239);
      
      // Test serialization back to JSON
      final serializedJson = response.toJson();
      expect(serializedJson['modelVersion'], 'gemini-2.0-flash');
      expect(serializedJson['responseId'], 'P8wyaMSrC4yR7dcP5ZWZ2Ac');
    });
  });
}