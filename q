[33mcommit 6cd9aa9370a3b2ab7a489a681379a091702c1a44[m[33m ([m[1;36mHEAD -> [m[1;32mmain[m[33m)[m
Author: HAMA Barhamou <hamabarhamou@gmail.com>
Date:   Fri Feb 2 15:04:36 2024 +0100

    Ajout d'un bouton personnalisé

[33mcommit d731f891d2e775f7699dc5725746830d57d7b26b[m[33m ([m[1;31morigin/main[m[33m)[m
Author: HAMA Barhamou <hamabarhamou@gmail.com>
Date:   Fri Feb 2 12:16:42 2024 +0100

    Ajout de l'attribut JoiningDate

[33mcommit 33d5989835778f1c49548dfed7caa6333ca26470[m
Author: HAMA Barhamou <hamabarhamou@gmail.com>
Date:   Fri Feb 2 12:00:46 2024 +0100

    - Création d'une entité UserStep
    - Ajout d'un attribut de composition

[33mcommit 16e8f3c10b2d9469bdecb13397f040fdcdf821e9[m
Author: HAMA Barhamou <hamabarhamou@gmail.com>
Date:   Fri Feb 2 11:25:20 2024 +0100

    Implementation de la liste deroulante des depratement dans le model user

[33mcommit 106e0c0e792889b149a3361fd29e71fa688292ff[m
Author: HAMA Barhamou <hamabarhamou@gmail.com>
Date:   Fri Feb 2 10:18:00 2024 +0100

    Dans ce commit, nous avons ajouté l' Onboarding statusattribut à l' Userentité. Cet attribut est une énumération avec trois valeurs possibles : Not started, In progress, Completed.
    
    Nous avons appris que :
    
    Les énumérations représentent des ensembles de constantes définies au moment de la conception.
    
    Dans Jmix, une constante d'énumération a une valeur et un identifiant. L'identifiant est stocké dans la base de données au lieu de la constante ou de sa valeur ordinale.
    
    Un attribut d'entité nouvellement créé peut être facilement ajouté aux vues existantes à l'aide du bouton Ajouter aux vues ( ajouter un attribut aux écrans) dans la barre d'outils Attributs du concepteur d'entités.
    
    Le InitEntityEventgestionnaire peut être utilisé pour initialiser les attributs d'une nouvelle instance d'entité dans une vue détaillée. Le stub du gestionnaire peut être généré par Studio si vous cliquez sur Générer un gestionnaire dans le panneau Actions de l'éditeur de code.

[33mcommit df87f0b89fdd80f6e9799b93926628d6c9c33238[m
Author: HAMA Barhamou <hamabarhamou@gmail.com>
Date:   Thu Feb 1 21:56:52 2024 +0100

    Dans se commit, nous avons construit la deuxième fonctionnalité : la gestion des départements.
    
    Nous avons appris que :
    
    Studio aide à créer des attributs de référence et génère des journaux de modifications Liquibase avec une clé étrangère et un index.
    
    Pour afficher un attribut de référence dans une liste d'entités ou une vue détaillée, il doit être inclus dans le plan de récupération de la vue.
    
    Le nom de l'instance est utilisé pour afficher une référence dans l'interface utilisateur.
    
    Le composant EntityPicker est utilisé par défaut pour sélectionner une référence dans une vue détaillée générée.
    
    Le caractère unique des attributs d'entité est maintenu au niveau de la base de données en définissant des contraintes uniques.
    
    Un message unique de violation de contrainte peut être facilement personnalisé.
    
    Les légendes et les messages générés par Studio sont stockés dans le paquet de messages de l'application.
    
    Studio déploie à chaud les modifications dans les vues et les messages sur l'application en cours d'exécution, ce qui évite de redémarrer l'application lors du développement de l'interface utilisateur.
    Les modifications apportées aux entités ne sont pas déployées à chaud.

[33mcommit ef7ba81b2d86da10bf8ee9369cd7c2d309a393a7[m
Author: HAMA Barhamou <hamabarhamou@gmail.com>
Date:   Thu Feb 1 16:25:39 2024 +0100

    Dans cette section, nous avons créé la fonctionnalité la plus simple de l'application : la gestion des étapes d'intégration.
    
    Nous avons appris que :
    
    Studio dispose d'un concepteur visuel pour créer et modifier des classes et des attributs d'entité .
    Le verrouillage optimiste est recommandé pour la plupart des entités. Il est utilisé si vous sélectionnez le trait Versionné pour l'entité.
    Studio peut générer des vues CRUD pour une entité à l'aide de modèles.
    Une vue liste d'entités est ajoutée au menu principal de l'application.
    Avant d'exécuter l'application, Studio compare le modèle de données et le schéma de la base de données. S'il y a une différence, il génère et exécute un journal des modifications Liquibase.

[33mcommit 774bc1b70862658d9c1701e362db06d80f26cf67[m
Author: HAMA Barhamou <hamabarhamou@gmail.com>
Date:   Thu Feb 1 11:58:06 2024 +0100

    Ajout de readme

[33mcommit d56378eb891b97d5c06dfe0b610305a3a07e3672[m
Author: HAMA Barhamou <hamabarhamou@gmail.com>
Date:   Wed Jan 31 01:29:41 2024 +0100

    Initial commit
