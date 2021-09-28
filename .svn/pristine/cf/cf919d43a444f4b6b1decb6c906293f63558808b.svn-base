package MaozaiTea.pojo;

import org.apache.commons.codec.binary.Base64;

import javax.crypto.Cipher;
import java.security.*;
import java.security.interfaces.RSAPrivateKey;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;
import java.util.HashMap;
import java.util.Map;

public class RSAEncrypt {
//    Base64编码转换类
    public static class Base64Coded {
        public static String decode(byte[] bytes) {
            return new String(Base64.decodeBase64(bytes));
        }

        public static String encode(byte[] bytes) {
            return new String(Base64.encodeBase64(bytes));
        }
    }

    private static Map<Integer, String> keyMap = new HashMap<Integer, String>();

    public static String getPublicKey() {
        return publicKey;
    }

    public static String getPrivateKey() {
        return privateKey;
    }

    private static String publicKey = "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCN/aP8AdRL5ZioNqe5rAGg6busNGLYaT2r/+ranPM34DsU1yoUJlzQ+P6jE/z1ZxGypaPrGa6pXVP+RZ/86qP3UbjmWj0cWqS19hK5v6U8rN8GGtE7txEB0Ryrm/3oR5Jw7G+W+xw6QX0Pnw5K35McD1xwehKpeohvSsJGi3/ciQIDAQAB";
    private static String privateKey = "MIICdwIBADANBgkqhkiG9w0BAQEFAASCAmEwggJdAgEAAoGBAI39o/wB1EvlmKg2p7msAaDpu6w0YthpPav/6tqc8zfgOxTXKhQmXND4/qMT/PVnEbKlo+sZrqldU/5Fn/zqo/dRuOZaPRxapLX2Erm/pTys3wYa0Tu3EQHRHKub/ehHknDsb5b7HDpBfQ+fDkrfkxwPXHB6Eql6iG9KwkaLf9yJAgMBAAECgYA9D4EwgzzfcpnGZNKWBwEgSMNbF6AWPpO13rUJVAtH0Ra3LJw81A6AE0O1r4fNpIg40gB+vqmczbSsGRbm9aSSt2/MfWVZd3lCdoIV+kswkJ5tu76+oISpwujr6p2yMRbswMB5tLtSlNWF6U59Mb4PoYs358tOLQzRH9EnQgwQXQJBAMt2SwqrqpZucIOWg++zM2xybVLkzFG/00qdpVOFpIneUNi7V0wuKAk4ctE34vJ5hFg/2d9l2VmRoyrTc12ilNMCQQCyp9VxgWnNRU4WdJNeaM3WmgLUQS5DxzptunfuStulbCGIhAU2BPVuy5YewjobYMbMcOpTnO0eusWmyv+7Wt+zAkEAsPfMH5TfBIc80Aeb7GKW6M3CbyZY3QYXVsA166bDTbOT6F9SeA1xf0uc+oM8n6C4TzYCYEArQ6/cF0TiBGCERwJAHngDLfV9PtXoCGpfS8Wh/UyM2Pg41LRgoaAgnhJEPYUgfvDNFrZnyTqNYreLQ2oQ3YMQY6wqwIfn95c9YA2SgwJBAI1QyX6P6Su2qBrTxInpiddKvyU0IMfLX6xsDCpM/7zP7V9o4DTUMFXu/zId/ig+WFI8vEqCHkpCkDw3lyX8wiQ=";

    public static void genKeyPair() throws NoSuchAlgorithmException {
        // KeyPairGenerator类用于生成公钥和私钥对，基于RSA算法生成对象
        KeyPairGenerator keyPairGen = KeyPairGenerator.getInstance("RSA");
        // 初始化密钥对生成器，密钥大小为96-1024位
        keyPairGen.initialize(1024,new SecureRandom());
        // 生成一个密钥对，保存在keyPair中
        KeyPair keyPair = keyPairGen.generateKeyPair();
        RSAPrivateKey privateKey = (RSAPrivateKey) keyPair.getPrivate();   // 得到私钥
        RSAPublicKey publicKey = (RSAPublicKey) keyPair.getPublic();  // 得到公钥
        String publicKeyString = new String(Base64.encodeBase64(publicKey.getEncoded()));
        // 得到私钥字符串
        String privateKeyString = new String(Base64.encodeBase64((privateKey.getEncoded())));
        // 将公钥和私钥保存到Map
        keyMap.put(0,publicKeyString);  //0表示公钥
        keyMap.put(1,privateKeyString);  //1表示私钥
    }

    public static String encrypt( String str, String publicKey) throws Exception{
        //base64编码的公钥
        byte[] decoded = Base64.decodeBase64(publicKey);
        RSAPublicKey pubKey = (RSAPublicKey) KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(decoded));
        //RSA加密
        Cipher cipher = Cipher.getInstance("RSA");
        cipher.init(Cipher.ENCRYPT_MODE, pubKey);
        return Base64.encodeBase64String(cipher.doFinal(str.getBytes("UTF-8")));
    }

    public static String decrypt(String str, String privateKey) throws Exception{
        //64位解码加密后的字符串
        byte[] inputByte = Base64.decodeBase64(str.getBytes("UTF-8"));
        //base64编码的私钥
        byte[] decoded = Base64.decodeBase64(privateKey);
        RSAPrivateKey priKey = (RSAPrivateKey) KeyFactory.getInstance("RSA").generatePrivate(new PKCS8EncodedKeySpec(decoded));
        //RSA解密
        Cipher cipher = Cipher.getInstance("RSA");
        cipher.init(Cipher.DECRYPT_MODE, priKey);
        return new String(cipher.doFinal(inputByte));
    }
}
