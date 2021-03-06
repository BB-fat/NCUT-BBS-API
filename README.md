# NCUT BBS接口及鉴权流程

## 设计构想

- [x] 实现鉴权逻辑，自动管理token的验证、续签等。
- [x] 前端可以较长时间保持登陆状态，web端用户也不需要频繁登陆。
- [x] 客户端、web可同时登陆。
- [x] 增加、修改接口快速方便，且不易出错。
- [x] 最大程度复用代码。
- [x] 有良好的安全性。

## 注册

![NCUT-BBS注册流程](https://picture.fatech.online/20210307001656.png?x-oss-process=style/blog-picture)

## 登陆

### 登陆方式

无论何种登陆方式，前端都不会保存用户的敏感信息。

* 用户名密码

* 手机号验证码

* 微信

  仅支持移动端且需绑定微信。

### 登陆流程

参考注册流程，选择某种登陆方式登陆成功之后签发token。

## 鉴权

![NCUT-BBS鉴权](https://picture.fatech.online/20210307004203.png?x-oss-process=style/blog-picture)

### token合法性

* 在有效期内
* 此次请求的ip地址与上次请求的相同
* 发起请求的设备ID相同

### 续签

使用上一个有效的token可以续签一个新的token，对于每一个token，此操作只能进行一次，如果续签过程出现异常，前端只能选择重新登陆才能得到新的token，重新登陆后会签发新的token，即使登陆前的token有效也会被替换。

## API实现

