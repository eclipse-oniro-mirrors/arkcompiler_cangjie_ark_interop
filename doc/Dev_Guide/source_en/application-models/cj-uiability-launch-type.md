# UIAbility Component Launch Mode

The launch mode of [UIAbility](../../../API_Reference/source_en/apis/AbilityKit/cj-apis-ability.md#class-uiability) refers to the different presentation states of UIAbility instances during startup. For different business scenarios, the system provides three launch modes:

- [singleton (Single Instance Mode)](#singleton-launch-mode)

- [multiton (Multiple Instance Mode)](#multiton-launch-mode)

- [specified (Specified Instance Mode)](#specified-launch-mode)

> **Note:**
>
> `standard` was the previous name for `multiton`, with the same effect as the multiple instance mode.

## singleton Launch Mode

The singleton launch mode is the single instance mode and is also the default launch mode.

Each time the [startAbility()](../../../API_Reference/source_en/apis/AbilityKit/cj-apis-ability.md#func-startabilitywant) method is called, if an instance of this [UIAbility](../../../API_Reference/source_en/apis/AbilityKit/cj-apis-ability.md#class-uiability) type already exists in the application process, the system reuses the existing UIAbility instance. Only one instance of this UIAbility exists in the system, meaning only one instance of this UIAbility type appears in the recent tasks list.

**Figure 1** Demonstration of Single Instance Mode

<img src="./figures/uiability-launch-type1.gif" style="zoom:90%">

> **Note:**
>
> If the UIAbility instance of the application has already been created and is configured in singleton mode, calling [startAbility()](../../../API_Reference/source_en/apis/AbilityKit/cj-apis-ability.md#func-startabilitywant) again to launch this UIAbility instance will reuse the existing instance rather than creating a new one. In this case, only the [onNewWant()](../../../API_Reference/source_en/apis/AbilityKit/cj-apis-ability.md#func-onnewwantwant-launchparam) callback will be triggered, while the [onCreate()](../../../API_Reference/source_en/apis/AbilityKit/cj-apis-ability.md#func-oncreatewant-launchparam) and [onWindowStageCreate()](../../../API_Reference/source_en/apis/AbilityKit/cj-apis-ability.md#func-onwindowstagecreatewindowstage) lifecycle callbacks will not be invoked. If the existing instance is still in the startup process, attempting to start it via the startAbility interface will result in error code 16000082.

To use the singleton launch mode, configure the `launchType` field as `singleton` in the [module.json5 configuration file](../cj-start/basic-knowledge/module-configuration-file.md).

```json
{
  "module": {
    // ...
    "abilities": [
      {
        "launchType": "singleton",
        // ...
      }
    ]
  }
}
```

## multiton Launch Mode

The multiton launch mode is the multiple instance mode. Each time the [startAbility()](../../../API_Reference/source_en/apis/AbilityKit/cj-apis-ability.md#func-startabilitywant) method is called, a new instance of this [UIAbility](../../../API_Reference/source_en/apis/AbilityKit/cj-apis-ability.md#class-uiability) type is created in the application process. This means multiple instances of this UIAbility type can appear in the recent tasks list. In such cases, the UIAbility can be configured as multiton (multiple instance mode).

**Figure 2** Demonstration of Multiple Instance Mode

<img src="./figures/uiability-launch-type2.gif" style="zoom:90%">

To use the multiton launch mode, configure the `launchType` field as `multiton` in the [module.json5 configuration file](../cj-start/basic-knowledge/module-configuration-file.md).

```json
{
  "module": {
    // ...
    "abilities": [
      {
        "launchType": "multiton",
        // ...
      }
    ]
  }
}
```