{
    "id": "76ae79af-e599-4cb8-8e4c-17124110df50",
    "modelName": "GMObject",
    "mvc": "1.0",
    "name": "obj_enemy_hand",
    "eventList": [
        {
            "id": "d01850fa-68b5-4661-9967-323917adad3e",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 3,
            "m_owner": "76ae79af-e599-4cb8-8e4c-17124110df50"
        },
        {
            "id": "b769ef20-7aa2-47ee-92c4-113f47536e7d",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 0,
            "m_owner": "76ae79af-e599-4cb8-8e4c-17124110df50"
        },
        {
            "id": "af9eb8f2-d41c-4437-9fa5-0b99949e3ec3",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 8,
            "m_owner": "76ae79af-e599-4cb8-8e4c-17124110df50"
        }
    ],
    "maskSpriteId": "cdf3b373-f47c-411d-b7ab-aaca3ff8b150",
    "overriddenProperties": null,
    "parentObjectId": "fbd8c052-0b29-426e-b9c6-7ded10c4eb55",
    "persistent": false,
    "physicsAngularDamping": 0.1,
    "physicsDensity": 0.5,
    "physicsFriction": 0.2,
    "physicsGroup": 0,
    "physicsKinematic": false,
    "physicsLinearDamping": 0.1,
    "physicsObject": false,
    "physicsRestitution": 0.1,
    "physicsSensor": false,
    "physicsShape": 1,
    "physicsShapePoints": null,
    "physicsStartAwake": true,
    "properties": [
        {
            "id": "66c6b641-7c73-409f-ba41-5f8ab5c1b80d",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "3",
            "varName": "walkspd",
            "varType": 0
        },
        {
            "id": "32b022e5-cf4a-4e20-b2dc-5f4984224943",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "hsp",
            "varType": 0
        },
        {
            "id": "21209fbd-b127-47a8-a941-9966e89f72b4",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "vsp",
            "varType": 0
        },
        {
            "id": "7df28ff7-f245-474d-a738-21a69df31eb1",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0.3",
            "varName": "grv",
            "varType": 0
        },
        {
            "id": "4dc277ea-0fdd-422c-8011-fbbc573dfc86",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "obj_player",
            "varName": "follow",
            "varType": 5
        },
        {
            "id": "c81747de-4551-4c77-b3ee-116a4ac94186",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "xtarget",
            "varType": 0
        },
        {
            "id": "4a1bbe40-e49c-48ce-a297-2558f62e337b",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "ytarget",
            "varType": 0
        },
        {
            "id": "4197109f-1a23-4b88-a234-67a55c8f0b4a",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "120",
            "varName": "wait",
            "varType": 4
        },
        {
            "id": "73d29a11-589a-4759-bc1b-4fee4d5001b9",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "HAND_STATE.PATROL",
            "varName": "currentstate",
            "varType": 4
        },
        {
            "id": "fa6d0800-8c68-4f7f-898a-7898610a4adf",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "100",
            "varName": "hp",
            "varType": 0
        },
        {
            "id": "29cffcfa-9ee4-4b88-a3be-f62c91966c0f",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "flash",
            "varType": 0
        }
    ],
    "solid": false,
    "spriteId": "cdf3b373-f47c-411d-b7ab-aaca3ff8b150",
    "visible": true
}