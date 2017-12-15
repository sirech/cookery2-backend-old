# rubocop:disable Metrics/MethodLength
def recipes
  [
    {
      id: 1,
      name: 'test name',
      servings: 2,
      difficulty: 'easy',
      steps: [
        { description: 'Mix all the ingredients', duration: 0 },
        { description: 'name name name', related_id: 16, duration: 0 }
      ],
      quantities: [
        { name: 'sugar', unit: 'gr', amount: 50 },
        { name: 'water', unit: 'ml', amount: 1000 },
        { name: 'salt', unit: 'pinch', amount: 1 }
      ]
    },
    {
      id: 2,
      name: 'Bell’s Expedition',
      servings: 5,
      difficulty: 'easy'
    },
    {
      id: 3,
      name: 'Founders Kentucky Breakfast ',
      servings: 2,
      difficulty: 'medium'
    },
    {
      id: 4,
      name: 'Chimay Grande Réserve',
      servings: 3,
      difficulty: 'medium'
    },
    {
      id: 5,
      name: 'Alpha King Pale Ale',
      servings: 1,
      difficulty: 'difficult'
    },
    {
      id: 6,
      name: 'La Fin Du Monde',
      servings: 6,
      difficulty: 'easy'
    },
    {
      id: 7,
      name: 'Trappistes Rochefort 10',
      servings: 1,
      difficulty: 'difficult'
    },
    {
      id: 10,
      name: 'Yeti Imperial Stout',
      servings: 2,
      difficulty: 'medium'
    },
    {
      id: 11,
      name: 'Samuel Smith’s Oatmeal Stout',
      servings: 6,
      difficulty: 'medium',
      steps: [
        { description: 'shake it', duration: 60 },
        { description: 'until you make it', duration: 33 }
      ]
    },
    {
      id: 15,
      name: 'my new thing',
      servings: 3,
      difficulty: 'easy'
    },
    {
      id: 16,
      name: 'name name name',
      servings: 3,
      difficulty: 'medium'
    }
  ]
end
# rubocop:enable Metrics/MethodLength
