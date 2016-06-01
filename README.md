TencentOpenApiSDK
=================

[Tencent Open Api SDK](http://wiki.open.qq.com/wiki/mobile/SDK%E4%B8%8B%E8%BD%BD)

### 安装

或者在 `Podfile` 文件下添加

``` 
	pod 'TencentOpenApiSDK' , :git => 'https://github.com/hhtczengjing/TencentOpenApiSDK.git'
```

### 基础版 和 完整版 的差别

- 完整版包含 QQ Api、腾讯业务 Api、Tencent OAuth 接口 和 腾讯微博接口；而基础版版只包含 QQ Api 和 Tencent OAuth 接口。
- 完整版包含一个 bundle 资源包，而基础版版 不包含任何资源文件。

###更新记录

#### 3.1.0（2016-05-17）

- 1. 新增一键加群功能；
- 2. 修正 log 文件从 document 目录移到Caches目录；
- 3. 修正通过h5 登录，分享到手Q提示账号不符合；
- 4. 修正分享到群部落；
- 5. 修正sdk添加游戏好友获取好友设置失败；
- 6. 修复登录webview界面，放大镜穿透的问题；
- 7. 支持cpu指令集版本由arm7、arm7s、arm64、i386 、x86_64 变更到 armv7、x86_64、arm64

#### 2.9.5 (2015-12-16)

- 关闭以下功能: 第三方APP直接上传图片和视频到空间，分享的图片支持在动态直接展示，视频支持动态里直接播放

#### 2.9.3 (2015-11-03)

- 支持第三方 APP 直接上传图片和视频到空间，分享的图片支持在动态直接展示，视频支持动态里直接播放
- 修改分享流程，启用 Webview 权限的 app 只有在无安装 手Q 或者 手Q 版本过旧才会启用 H5 页面分享
- 修改一些bug（qq 空间分享时打开外部浏览器问题、模拟器里 H5 登陆页面空白问题、分享 H5 页面空白问题等）
- (only 64bit subspec)`TencentOpenApi_IOS_Bundle.bundle` 去除 `info.plist`、SDK 增加版本号标记