package ohos_app_cangjie_entry.tests.mech_register

import ohos_app_cangjie_entry.utils.*

public class RegisterGenerator {
    public static func randomRegisterName(seed: UInt64): String {
        let suffix = RandomUtil.randomInt(seed, 0.0, allowNegative: false, allowSpecial: false) % 100000
        "reg_${seed}_${suffix}"
    }

    public static func randomString(seed: UInt64, length: Int64): String {
        RandomUtil.randomString(seed, 0.0, allowEmpty: false, allowControl: false, allowUnicode: false, allowLong: false, maxLength: length, charset: "ascii")
    }
}
