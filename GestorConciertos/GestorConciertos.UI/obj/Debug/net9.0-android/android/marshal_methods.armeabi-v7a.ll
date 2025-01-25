; ModuleID = 'marshal_methods.armeabi-v7a.ll'
source_filename = "marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [334 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [1002 x i32] [
	i32 u0x0027eb9e, ; 0: System.Net.NetworkInformation.dll => 69
	i32 u0x00345a11, ; 1: lib_System.Net.Requests.dll.so => 73
	i32 u0x005332a8, ; 2: lib_Xamarin.AndroidX.Legacy.Support.Core.Utils.dll.so => 242
	i32 u0x009b21bb, ; 3: System.Net.NameResolution.dll => 68
	i32 u0x00c8cc5d, ; 4: lib_Xamarin.AndroidX.Loader.dll.so => 257
	i32 u0x00e0bbf7, ; 5: lib_System.Xml.XmlSerializer.dll.so => 163
	i32 u0x00efe298, ; 6: System.Runtime.Intrinsics.dll => 109
	i32 u0x0119bc86, ; 7: lib_Microsoft.Extensions.DependencyInjection.Abstractions.dll.so => 188
	i32 u0x01f2c4e1, ; 8: Xamarin.AndroidX.Lifecycle.Runtime => 249
	i32 u0x0211b5dc, ; 9: Xamarin.Google.Guava.ListenableFuture.dll => 286
	i32 u0x02139ac3, ; 10: System.IO.FileSystem.DriveInfo => 48
	i32 u0x0254c520, ; 11: Newtonsoft.Json.dll => 205
	i32 u0x025a8054, ; 12: System.Net.WebSockets.dll => 81
	i32 u0x02664405, ; 13: lib-uk-Microsoft.Maui.Controls.resources.dll.so => 326
	i32 u0x028aa24d, ; 14: System.Threading.Thread => 146
	i32 u0x02bda0f5, ; 15: Xamarin.KotlinX.AtomicFU.Jvm => 291
	i32 u0x03358480, ; 16: lib_Microsoft.Maui.dll.so => 202
	i32 u0x0335cdbc, ; 17: ca/Microsoft.Maui.Controls.resources => 298
	i32 u0x03f75868, ; 18: System.Diagnostics.StackTrace => 30
	i32 u0x0410f24b, ; 19: System.Security.Cryptography.Primitives => 125
	i32 u0x044bb714, ; 20: Microsoft.Maui.Graphics.dll => 204
	i32 u0x04e7b0a1, ; 21: System.Runtime.CompilerServices.VisualC.dll => 103
	i32 u0x056606a6, ; 22: lib_System.Collections.NonGeneric.dll.so => 10
	i32 u0x060d4943, ; 23: Xamarin.AndroidX.SlidingPaneLayout => 270
	i32 u0x065dd880, ; 24: lib_System.Linq.Queryable.dll.so => 61
	i32 u0x06c2cd46, ; 25: zh-HK/Microsoft.Maui.Controls.resources => 328
	i32 u0x06e4e181, ; 26: lib_Xamarin.Google.Guava.ListenableFuture.dll.so => 286
	i32 u0x06ee56d3, ; 27: lib_System.Net.Mail.dll.so => 67
	i32 u0x06ffddbc, ; 28: System.Runtime.InteropServices => 108
	i32 u0x072f9521, ; 29: Xamarin.AndroidX.SlidingPaneLayout.dll => 270
	i32 u0x074aea82, ; 30: System.Threading.Channels.dll => 140
	i32 u0x0772c6a7, ; 31: lib_System.Diagnostics.TextWriterTraceListener.dll.so => 31
	i32 u0x0881c32f, ; 32: System.Net.WebHeaderCollection => 78
	i32 u0x08f064cf, ; 33: System.Security.Cryptography.Primitives.dll => 125
	i32 u0x097ed3c0, ; 34: System.ComponentModel.Annotations => 13
	i32 u0x098905a2, ; 35: lib_Xamarin.AndroidX.Concurrent.Futures.dll.so => 224
	i32 u0x09d975c3, ; 36: Xamarin.AndroidX.Collection.dll => 221
	i32 u0x09e60a6e, ; 37: Xamarin.KotlinX.AtomicFU.dll => 290
	i32 u0x0a0c2bd0, ; 38: lib_Xamarin.AndroidX.Activity.dll.so => 210
	i32 u0x0a81994f, ; 39: System.ServiceProcess => 133
	i32 u0x0ade3a75, ; 40: Xamarin.AndroidX.SwipeRefreshLayout.dll => 272
	i32 u0x0ae43932, ; 41: lib_Xamarin.AndroidX.Tracing.Tracing.dll.so => 273
	i32 u0x0aee6a3d, ; 42: lib-vi-Microsoft.Maui.Controls.resources.dll.so => 327
	i32 u0x0aeedc53, ; 43: lib_Xamarin.Google.Android.Material.dll.so => 282
	i32 u0x0afca281, ; 44: System.ValueTuple.dll => 152
	i32 u0x0b0de1c3, ; 45: lib_System.Xml.XPath.XDocument.dll.so => 160
	i32 u0x0b63b1e1, ; 46: lib_System.Net.Http.Json.dll.so => 64
	i32 u0x0b721a36, ; 47: lib-pl-Microsoft.Maui.Controls.resources.dll.so => 317
	i32 u0x0ba65f85, ; 48: vi/Microsoft.Maui.Controls.resources.dll => 327
	i32 u0x0ba8e231, ; 49: lib_System.Net.ServicePoint.dll.so => 75
	i32 u0x0be195c3, ; 50: zh-HK/Microsoft.Maui.Controls.resources.dll => 328
	i32 u0x0c38ff48, ; 51: System.ComponentModel => 18
	i32 u0x0c7b2e71, ; 52: Xamarin.AndroidX.Browser.dll => 219
	i32 u0x0cfa66a6, ; 53: lib_System.IO.Compression.FileSystem.dll.so => 44
	i32 u0x0d1f8edb, ; 54: System.Diagnostics.Debug => 26
	i32 u0x0d73bff4, ; 55: lib_Microsoft.Extensions.Logging.Debug.dll.so => 196
	i32 u0x0db8d509, ; 56: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 242
	i32 u0x0dc10265, ; 57: Microsoft.CSharp.dll => 1
	i32 u0x0dc2f416, ; 58: lib_Xamarin.AndroidX.CustomView.dll.so => 231
	i32 u0x0dcb05c4, ; 59: System.Linq.Parallel => 60
	i32 u0x0dd133ce, ; 60: System.Globalization => 42
	i32 u0x0e762ada, ; 61: lib-nb-Microsoft.Maui.Controls.resources.dll.so => 315
	i32 u0x0eb2f8c5, ; 62: System.Reflection.Emit.Lightweight => 92
	i32 u0x0ec71be0, ; 63: lib_System.Security.SecureString.dll.so => 130
	i32 u0x0ecfdca9, ; 64: lib_Xamarin.Android.Glide.dll.so => 206
	i32 u0x0f27af52, ; 65: Microsoft.AspNetCore.Components.dll => 176
	i32 u0x0f99119d, ; 66: Xamarin.AndroidX.ConstraintLayout.dll => 225
	i32 u0x107abf20, ; 67: System.Threading.Timer.dll => 148
	i32 u0x109c6ab8, ; 68: Xamarin.AndroidX.Lifecycle.LiveData.dll => 245
	i32 u0x10b7d2b7, ; 69: Xamarin.AndroidX.Interpolator => 241
	i32 u0x10bf9929, ; 70: cs/Microsoft.Maui.Controls.resources.dll => 299
	i32 u0x10c1d9f6, ; 71: lib_System.Data.DataSetExtensions.dll.so => 23
	i32 u0x113d3381, ; 72: lib-sk-Microsoft.Maui.Controls.resources.dll.so => 322
	i32 u0x1159791e, ; 73: System.IO.Pipes.AccessControl.dll => 55
	i32 u0x11d123fd, ; 74: System.Net.Ping.dll => 70
	i32 u0x13031348, ; 75: Xamarin.AndroidX.Activity.dll => 210
	i32 u0x132b30dd, ; 76: System.Numerics => 84
	i32 u0x1331a702, ; 77: lib_Xamarin.Google.Crypto.Tink.Android.dll.so => 284
	i32 u0x136bf828, ; 78: lib_System.Runtime.dll.so => 117
	i32 u0x14095832, ; 79: ja/Microsoft.Maui.Controls.resources.dll => 312
	i32 u0x146817a2, ; 80: Xamarin.AndroidX.Lifecycle.Common => 243
	i32 u0x14eaf2a7, ; 81: lib_System.ComponentModel.Annotations.dll.so => 13
	i32 u0x153e1455, ; 82: it/Microsoft.Maui.Controls.resources.dll => 311
	i32 u0x15502fa0, ; 83: cs/Microsoft.Maui.Controls.resources => 299
	i32 u0x15766b7b, ; 84: System.ServiceModel.Web => 132
	i32 u0x15c177ae, ; 85: lib_Microsoft.Extensions.Configuration.dll.so => 182
	i32 u0x15e184df, ; 86: lib_System.Runtime.Loader.dll.so => 110
	i32 u0x15ebe147, ; 87: System.IO.Pipes => 56
	i32 u0x1658bf94, ; 88: System.Transactions.Local => 150
	i32 u0x16646418, ; 89: System.Net.ServicePoint.dll => 75
	i32 u0x16a510e1, ; 90: System.Threading.Thread.dll => 146
	i32 u0x16fe439a, ; 91: System.Memory.dll => 63
	i32 u0x1766c1f7, ; 92: System.Threading.ThreadPool.dll => 147
	i32 u0x1778984a, ; 93: lib_Xamarin.AndroidX.ResourceInspection.Annotation.dll.so => 266
	i32 u0x17969339, ; 94: _Microsoft.Android.Resource.Designer => 333
	i32 u0x180c08d0, ; 95: WindowsBase => 166
	i32 u0x195d1904, ; 96: Xamarin.AndroidX.Lifecycle.Runtime.Android => 250
	i32 u0x198cd3eb, ; 97: lib_System.Security.Cryptography.Encoding.dll.so => 123
	i32 u0x19f6996b, ; 98: sv/Microsoft.Maui.Controls.resources.dll => 323
	i32 u0x1a4e3ec4, ; 99: Xamarin.AndroidX.ConstraintLayout.Core => 226
	i32 u0x1a61054f, ; 100: System.Collections => 12
	i32 u0x1ae0ec2c, ; 101: Xamarin.AndroidX.Fragment.dll => 239
	i32 u0x1ae969b2, ; 102: System.Security.Cryptography.X509Certificates => 126
	i32 u0x1b317bfd, ; 103: System.Web.HttpUtility.dll => 153
	i32 u0x1b46a9fd, ; 104: lib_Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll.so => 251
	i32 u0x1b5932ea, ; 105: lib_Mono.Android.Runtime.dll.so => 171
	i32 u0x1b611806, ; 106: System.Runtime.Serialization.Primitives.dll => 114
	i32 u0x1bc4415d, ; 107: mscorlib => 167
	i32 u0x1bc6ffe7, ; 108: lib_Java.Interop.dll.so => 169
	i32 u0x1bcdaf18, ; 109: lib_Xamarin.AndroidX.LocalBroadcastManager.dll.so => 258
	i32 u0x1bff388e, ; 110: System.dll => 165
	i32 u0x1c690cb9, ; 111: Xamarin.AndroidX.Interpolator.dll => 241
	i32 u0x1c78d08a, ; 112: lib_System.Private.Uri.dll.so => 87
	i32 u0x1d05f80c, ; 113: Xamarin.AndroidX.LocalBroadcastManager.dll => 258
	i32 u0x1d48410e, ; 114: lib_Xamarin.AndroidX.SlidingPaneLayout.dll.so => 270
	i32 u0x1d4d8185, ; 115: lib_System.Runtime.Serialization.dll.so => 116
	i32 u0x1dbae811, ; 116: System.ObjectModel => 85
	i32 u0x1dd2dc50, ; 117: id/Microsoft.Maui.Controls.resources.dll => 310
	i32 u0x1e092f31, ; 118: fi/Microsoft.Maui.Controls.resources.dll => 304
	i32 u0x1e9789de, ; 119: Microsoft.Extensions.Primitives.dll => 198
	i32 u0x1f1dceb7, ; 120: lib_System.Security.Cryptography.Primitives.dll.so => 125
	i32 u0x1f443e2d, ; 121: lib_System.AppContext.dll.so => 6
	i32 u0x1f6088c2, ; 122: System.Transactions.dll => 151
	i32 u0x1f6bf43d, ; 123: hi/Microsoft.Maui.Controls.resources => 307
	i32 u0x1f9b4faa, ; 124: System.Linq.Queryable => 61
	i32 u0x20216150, ; 125: Microsoft.Extensions.Logging => 194
	i32 u0x20303736, ; 126: System.IO.FileSystem.dll => 51
	i32 u0x2080b118, ; 127: System.Runtime.Extensions => 104
	i32 u0x20924146, ; 128: System.Runtime.Serialization.Xml => 115
	i32 u0x20bbb280, ; 129: System.Globalization.Calendars => 40
	i32 u0x213954e7, ; 130: Jsr305Binding => 283
	i32 u0x21f36ef8, ; 131: Xamarin.AndroidX.Window.Extensions.Core.Core => 281
	i32 u0x220f6a86, ; 132: Microsoft.Extensions.FileProviders.Embedded.dll => 191
	i32 u0x22697083, ; 133: System.Security.Cryptography.Cng => 121
	i32 u0x234b6fb2, ; 134: pt-BR/Microsoft.Maui.Controls.resources.dll => 318
	i32 u0x236793de, ; 135: lib_GoogleGson.dll.so => 174
	i32 u0x2386616a, ; 136: lib_System.ServiceModel.Web.dll.so => 132
	i32 u0x2397454a, ; 137: lib_System.Collections.Specialized.dll.so => 11
	i32 u0x23d83352, ; 138: System.IO.IsolatedStorage.dll => 52
	i32 u0x23eaab34, ; 139: lib_System.Core.dll.so => 21
	i32 u0x24154ecb, ; 140: System.IO.Compression.FileSystem => 44
	i32 u0x2459aaf0, ; 141: lib_System.Net.Sockets.dll.so => 76
	i32 u0x2493d7b9, ; 142: System.Security.Cryptography.Algorithms => 120
	i32 u0x2512d1c5, ; 143: Xamarin.AndroidX.Lifecycle.Runtime.Android.dll => 250
	i32 u0x2568904f, ; 144: Xamarin.AndroidX.CustomView => 231
	i32 u0x25fcbe08, ; 145: lib_Microsoft.Extensions.FileProviders.Physical.dll.so => 192
	i32 u0x26233b86, ; 146: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 237
	i32 u0x26249f17, ; 147: lib_Xamarin.AndroidX.CustomView.PoolingContainer.dll.so => 232
	i32 u0x262968a7, ; 148: lib_System.Reflection.Extensions.dll.so => 94
	i32 u0x262d781c, ; 149: lib-de-Microsoft.Maui.Controls.resources.dll.so => 301
	i32 u0x2660a755, ; 150: System.Net => 82
	i32 u0x27787397, ; 151: System.Text.Encodings.Web.dll => 137
	i32 u0x278c7790, ; 152: Xamarin.AndroidX.VersionedParcelable => 277
	i32 u0x27b53050, ; 153: lib_System.Data.Common.dll.so => 22
	i32 u0x27b6d01f, ; 154: Xamarin.AndroidX.Arch.Core.Common.dll => 217
	i32 u0x2814a96c, ; 155: System.Collections.Concurrent => 8
	i32 u0x282acf5e, ; 156: lib_System.IO.FileSystem.dll.so => 51
	i32 u0x28607aa1, ; 157: lib-pt-BR-Microsoft.Maui.Controls.resources.dll.so => 318
	i32 u0x287c1a88, ; 158: Xamarin.KotlinX.AtomicFU => 290
	i32 u0x28bdabca, ; 159: System.Net.Security => 74
	i32 u0x2904cf94, ; 160: ca/Microsoft.Maui.Controls.resources.dll => 298
	i32 u0x29293ff5, ; 161: System.Xml.Linq.dll => 156
	i32 u0x29352520, ; 162: Xamarin.KotlinX.Coroutines.Android.dll => 292
	i32 u0x29423679, ; 163: lib_Xamarin.AndroidX.CursorAdapter.dll.so => 230
	i32 u0x295a9e3d, ; 164: System.Windows => 155
	i32 u0x296c7566, ; 165: lib_System.Xml.dll.so => 164
	i32 u0x29af2b3b, ; 166: System.Reflection.Emit => 93
	i32 u0x29bd7e5b, ; 167: Xamarin.Jetbrains.Annotations => 287
	i32 u0x29be9df3, ; 168: System.IO.Compression.ZipFile => 45
	i32 u0x2a1e8ecb, ; 169: ko/Microsoft.Maui.Controls.resources.dll => 313
	i32 u0x2a4afd4a, ; 170: de/Microsoft.Maui.Controls.resources.dll => 301
	i32 u0x2b15ed29, ; 171: System.Runtime.Loader.dll => 110
	i32 u0x2ba1ca8c, ; 172: lib_System.Security.dll.so => 131
	i32 u0x2bd14e96, ; 173: System.Security.SecureString.dll => 130
	i32 u0x2cd6293c, ; 174: System.Diagnostics.Contracts.dll => 25
	i32 u0x2d052d0c, ; 175: Xamarin.Android.Glide.Annotations.dll => 207
	i32 u0x2d322560, ; 176: lib_System.Xml.XmlDocument.dll.so => 162
	i32 u0x2d445acd, ; 177: System.Net.Requests => 73
	i32 u0x2d745423, ; 178: System.IO.Pipes.dll => 56
	i32 u0x2e394f87, ; 179: System.IO.Compression => 46
	i32 u0x2ea3d5c7, ; 180: lib_Microsoft.AspNetCore.Components.WebView.Maui.dll.so => 180
	i32 u0x2eec5558, ; 181: lib_System.Reflection.dll.so => 98
	i32 u0x2f0980eb, ; 182: Microsoft.Extensions.Options => 197
	i32 u0x2f0fe5eb, ; 183: lib_System.Reflection.DispatchProxy.dll.so => 90
	i32 u0x2f1c1e69, ; 184: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 232
	i32 u0x2fec3262, ; 185: Microsoft.AspNetCore.Components.WebView.Maui => 180
	i32 u0x2ff6fb9f, ; 186: System.Data.Common => 22
	i32 u0x302809e9, ; 187: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 247
	i32 u0x30a0e95c, ; 188: lib_System.Threading.Thread.dll.so => 146
	i32 u0x311247b5, ; 189: System.Private.Uri.dll => 87
	i32 u0x317d5b75, ; 190: System.IO.Compression.Brotli => 43
	i32 u0x31a103c6, ; 191: System.Xml.XPath.dll => 161
	i32 u0x31b69d60, ; 192: System.Net.Quic => 72
	i32 u0x3246f6cd, ; 193: Xamarin.AndroidX.Print => 263
	i32 u0x3312831d, ; 194: lib_Xamarin.AndroidX.DrawerLayout.dll.so => 234
	i32 u0x33e88be1, ; 195: ar/Microsoft.Maui.Controls.resources => 297
	i32 u0x340ac0b8, ; 196: Microsoft.VisualBasic => 3
	i32 u0x34505120, ; 197: System.Globalization.dll => 42
	i32 u0x3463c971, ; 198: System.Net.Http.Json => 64
	i32 u0x34a66c56, ; 199: lib_System.IO.Pipes.dll.so => 56
	i32 u0x352e5794, ; 200: lib_Xamarin.Google.ErrorProne.Annotations.dll.so => 285
	i32 u0x35e25008, ; 201: System.ComponentModel.Primitives.dll => 16
	i32 u0x3612ff2c, ; 202: lib_System.IO.dll.so => 58
	i32 u0x364e69a3, ; 203: System.IO.MemoryMappedFiles.dll => 53
	i32 u0x36e9595b, ; 204: lib_System.Transactions.dll.so => 151
	i32 u0x370eff4f, ; 205: lib_System.Globalization.Extensions.dll.so => 41
	i32 u0x373f6a31, ; 206: tr/Microsoft.Maui.Controls.resources.dll => 325
	i32 u0x3751ef41, ; 207: Xamarin.Google.Guava.ListenableFuture => 286
	i32 u0x3787b992, ; 208: lib_System.ComponentModel.DataAnnotations.dll.so => 14
	i32 u0x37ea9cd7, ; 209: lib_Xamarin.AndroidX.Lifecycle.ViewModel.Android.dll.so => 254
	i32 u0x382704bd, ; 210: lib_Xamarin.AndroidX.Emoji2.ViewsHelper.dll.so => 237
	i32 u0x38c136f7, ; 211: System.Runtime.InteropServices.JavaScript.dll => 106
	i32 u0x38d89c1d, ; 212: lib_Xamarin.AndroidX.Lifecycle.Common.Jvm.dll.so => 244
	i32 u0x38f24a24, ; 213: Newtonsoft.Json => 205
	i32 u0x39481653, ; 214: lib_mscorlib.dll.so => 167
	i32 u0x399f1f06, ; 215: Xamarin.Google.Crypto.Tink.Android => 284
	i32 u0x39adca5e, ; 216: Xamarin.AndroidX.Lifecycle.Common.dll => 243
	i32 u0x3a20ecf3, ; 217: System.Diagnostics.Tracing => 34
	i32 u0x3a2aaa1d, ; 218: System.Xml.XDocument => 159
	i32 u0x3a8b0a79, ; 219: lib_Xamarin.KotlinX.Coroutines.Android.dll.so => 292
	i32 u0x3acd0267, ; 220: System.Private.DataContractSerialization.dll => 86
	i32 u0x3ad7b407, ; 221: System.Diagnostics.Tools => 32
	i32 u0x3b008d80, ; 222: lib_Xamarin.AndroidX.DynamicAnimation.dll.so => 235
	i32 u0x3b2c715c, ; 223: System.Collections.dll => 12
	i32 u0x3b3271e4, ; 224: zh-Hans/Microsoft.Maui.Controls.resources => 329
	i32 u0x3b458447, ; 225: lib_System.Threading.Tasks.Dataflow.dll.so => 142
	i32 u0x3b45fb35, ; 226: System.IO.FileSystem => 51
	i32 u0x3b4797e5, ; 227: es/Microsoft.Maui.Controls.resources => 303
	i32 u0x3b8e5ef8, ; 228: Microsoft.Extensions.FileSystemGlobbing.dll => 193
	i32 u0x3bb6bd33, ; 229: System.IO.UnmanagedMemoryStream.dll => 57
	i32 u0x3c5e5b62, ; 230: Xamarin.AndroidX.SavedState.dll => 267
	i32 u0x3cbffa41, ; 231: System.Drawing => 36
	i32 u0x3d548d92, ; 232: Microsoft.Extensions.DependencyInjection.Abstractions => 188
	i32 u0x3d5a6611, ; 233: da/Microsoft.Maui.Controls.resources.dll => 300
	i32 u0x3d7be038, ; 234: Xamarin.Google.ErrorProne.Annotations.dll => 285
	i32 u0x3dbaaf8f, ; 235: Xamarin.AndroidX.AppCompat => 215
	i32 u0x3dc84a49, ; 236: System.Drawing.Primitives.dll => 35
	i32 u0x3df150e9, ; 237: lib_Xamarin.AndroidX.Interpolator.dll.so => 241
	i32 u0x3e444eb4, ; 238: System.Linq.Expressions.dll => 59
	i32 u0x3e5c42fd, ; 239: lib_System.Reflection.TypeExtensions.dll.so => 97
	i32 u0x3eb776a1, ; 240: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 253
	i32 u0x3ebd41f6, ; 241: lib_System.Collections.dll.so => 12
	i32 u0x3ecd3024, ; 242: lib_System.Resources.Reader.dll.so => 99
	i32 u0x3eea4db8, ; 243: lib_Microsoft.Extensions.Primitives.dll.so => 198
	i32 u0x3f3e1e33, ; 244: lib_Xamarin.AndroidX.Lifecycle.Process.dll.so => 248
	i32 u0x3f9dcf8c, ; 245: GoogleGson => 174
	i32 u0x408b17f4, ; 246: System.ComponentModel.TypeConverter => 17
	i32 u0x409e66d8, ; 247: Xamarin.Kotlin.StdLib => 288
	i32 u0x41761b2c, ; 248: System => 165
	i32 u0x41fb142e, ; 249: Microsoft.Extensions.Configuration.FileExtensions.dll => 185
	i32 u0x4232ae7b, ; 250: lib_System.Reflection.Emit.dll.so => 93
	i32 u0x42be2972, ; 251: lib_System.Text.Encodings.Web.dll.so => 137
	i32 u0x42c091c1, ; 252: lib_Xamarin.Android.Glide.GifDecoder.dll.so => 209
	i32 u0x42da3e50, ; 253: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 251
	i32 u0x43362f15, ; 254: Microsoft.Extensions.Logging.Debug => 196
	i32 u0x4393e151, ; 255: lib-th-Microsoft.Maui.Controls.resources.dll.so => 324
	i32 u0x441f18e1, ; 256: lib_System.Security.Cryptography.OpenSsl.dll.so => 124
	i32 u0x444e5c8e, ; 257: lib_System.ComponentModel.TypeConverter.dll.so => 17
	i32 u0x44549c93, ; 258: lib_System.Net.WebProxy.dll.so => 79
	i32 u0x4474042c, ; 259: lib_System.Numerics.Vectors.dll.so => 83
	i32 u0x447dc2e6, ; 260: Xamarin.AndroidX.Window => 280
	i32 u0x44845810, ; 261: lib_System.Net.Http.dll.so => 65
	i32 u0x44c3958b, ; 262: lib_System.Private.DataContractSerialization.dll.so => 86
	i32 u0x45bde382, ; 263: lib_System.Windows.dll.so => 155
	i32 u0x45c677b2, ; 264: System.Web.dll => 154
	i32 u0x45ec7ce1, ; 265: Microsoft.Extensions.FileProviders.Abstractions.dll => 189
	i32 u0x460b48eb, ; 266: Xamarin.AndroidX.VectorDrawable.Animated => 276
	i32 u0x463a8801, ; 267: Xamarin.AndroidX.Navigation.Runtime.dll => 261
	i32 u0x464305ed, ; 268: fi/Microsoft.Maui.Controls.resources => 304
	i32 u0x466ae52b, ; 269: lib_System.Threading.Overlapped.dll.so => 141
	i32 u0x47a87de7, ; 270: lib_System.Resources.Writer.dll.so => 101
	i32 u0x47b79c15, ; 271: pl/Microsoft.Maui.Controls.resources.dll => 317
	i32 u0x47c7b4fa, ; 272: Xamarin.AndroidX.Arch.Core.Common => 217
	i32 u0x480a69ad, ; 273: System.Diagnostics.Process => 29
	i32 u0x48aa6be3, ; 274: System.IO.IsolatedStorage => 52
	i32 u0x48bf92c4, ; 275: lib_Xamarin.AndroidX.Collection.dll.so => 221
	i32 u0x49654709, ; 276: lib_System.Threading.Timer.dll.so => 148
	i32 u0x498b4f6b, ; 277: lib_Microsoft.AspNetCore.Components.Web.dll.so => 178
	i32 u0x499b8219, ; 278: nb/Microsoft.Maui.Controls.resources.dll => 315
	i32 u0x4a0189ae, ; 279: lib-hi-Microsoft.Maui.Controls.resources.dll.so => 307
	i32 u0x4a18f6f7, ; 280: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 281
	i32 u0x4a4cd262, ; 281: Xamarin.AndroidX.Collection.Jvm.dll => 222
	i32 u0x4aaf6f7c, ; 282: Microsoft.Win32.Registry => 5
	i32 u0x4ae97402, ; 283: lib_Microsoft.Maui.Graphics.dll.so => 204
	i32 u0x4b275854, ; 284: Xamarin.KotlinX.Serialization.Core.Jvm => 296
	i32 u0x4b5eebe5, ; 285: Xamarin.AndroidX.Startup.StartupRuntime.dll => 271
	i32 u0x4b64b158, ; 286: Xamarin.KotlinX.Coroutines.Core.dll => 293
	i32 u0x4b863c7a, ; 287: lib_System.Private.Xml.Linq.dll.so => 88
	i32 u0x4b8a64a7, ; 288: Xamarin.AndroidX.VectorDrawable => 275
	i32 u0x4bb12d98, ; 289: lib_System.Runtime.Serialization.Xml.dll.so => 115
	i32 u0x4be46b58, ; 290: Xamarin.AndroidX.Collection.Ktx => 223
	i32 u0x4c071bea, ; 291: Xamarin.KotlinX.Coroutines.Android => 292
	i32 u0x4c3393c5, ; 292: Xamarin.AndroidX.Annotation.Jvm => 214
	i32 u0x4d14ee2b, ; 293: Xamarin.AndroidX.DrawerLayout.dll => 234
	i32 u0x4de0ce3b, ; 294: lib_Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll.so => 264
	i32 u0x4e08a30b, ; 295: System.Private.DataContractSerialization => 86
	i32 u0x4e98c997, ; 296: lib_Xamarin.AndroidX.Window.Extensions.Core.Core.dll.so => 281
	i32 u0x4ed70c83, ; 297: Xamarin.AndroidX.Window.dll => 280
	i32 u0x4eed2679, ; 298: System.Linq => 62
	i32 u0x4f97822f, ; 299: System.Runtime.Serialization.Json.dll => 113
	i32 u0x50255dd9, ; 300: lib-hr-Microsoft.Maui.Controls.resources.dll.so => 308
	i32 u0x50acdfd7, ; 301: lib-ca-Microsoft.Maui.Controls.resources.dll.so => 298
	i32 u0x514d38cd, ; 302: System.IO => 58
	i32 u0x52114ed3, ; 303: Xamarin.AndroidX.SavedState => 267
	i32 u0x523dc4c1, ; 304: System.Resources.ResourceManager => 100
	i32 u0x533678bd, ; 305: lib_System.Private.CoreLib.dll.so => 173
	i32 u0x53701274, ; 306: lib_System.IO.FileSystem.Watcher.dll.so => 50
	i32 u0x53936ab4, ; 307: System.Configuration.dll => 19
	i32 u0x53cefc50, ; 308: Xamarin.AndroidX.CoordinatorLayout => 227
	i32 u0x53f80ba6, ; 309: System.Runtime.Serialization.Formatters.dll => 112
	i32 u0x5423e47b, ; 310: System.Runtime.CompilerServices.Unsafe => 102
	i32 u0x54246761, ; 311: lib_System.Diagnostics.Tools.dll.so => 32
	i32 u0x5498bac9, ; 312: lib_Microsoft.VisualBasic.dll.so => 3
	i32 u0x54ca50cb, ; 313: System.Runtime.CompilerServices.VisualC => 103
	i32 u0x557217fe, ; 314: lib_System.Numerics.dll.so => 84
	i32 u0x557b5293, ; 315: System.Runtime.Handles => 105
	i32 u0x558bc221, ; 316: Xamarin.Google.Crypto.Tink.Android.dll => 284
	i32 u0x55ab7451, ; 317: Xamarin.AndroidX.Lifecycle.Common.Jvm => 244
	i32 u0x55d10363, ; 318: System.Net.Quic.dll => 72
	i32 u0x55dfaca3, ; 319: lib_Microsoft.Win32.Primitives.dll.so => 4
	i32 u0x55e55df2, ; 320: Xamarin.AndroidX.Lifecycle.ViewModel.Android => 254
	i32 u0x568cd628, ; 321: System.Formats.Asn1.dll => 38
	i32 u0x569fcb36, ; 322: System.Diagnostics.Tools.dll => 32
	i32 u0x56abe34a, ; 323: Microsoft.Extensions.FileProviders.Composite => 190
	i32 u0x56c018af, ; 324: lib_System.IO.UnmanagedMemoryStream.dll.so => 57
	i32 u0x56e36530, ; 325: System.Runtime.Extensions.dll => 104
	i32 u0x56e7a7ad, ; 326: System.Net.Security.dll => 74
	i32 u0x5718a9ef, ; 327: System.Collections.Immutable.dll => 9
	i32 u0x57201017, ; 328: System.Security.Cryptography.OpenSsl => 124
	i32 u0x57261233, ; 329: System.IO.Compression.dll => 46
	i32 u0x57924923, ; 330: Xamarin.AndroidX.AppCompat.AppCompatResources => 216
	i32 u0x57a5e912, ; 331: Microsoft.Extensions.Primitives => 198
	i32 u0x5833866d, ; 332: System.Collections.Immutable => 9
	i32 u0x583e844f, ; 333: System.IO.Compression.Brotli.dll => 43
	i32 u0x585bf24e, ; 334: GestorConciertos.Shared => 332
	i32 u0x58a57897, ; 335: Microsoft.Win32.Primitives => 4
	i32 u0x58cffa99, ; 336: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 268
	i32 u0x58fd6613, ; 337: hi/Microsoft.Maui.Controls.resources.dll => 307
	i32 u0x596b5b3a, ; 338: lib_System.Drawing.Primitives.dll.so => 35
	i32 u0x5a48cf6c, ; 339: el/Microsoft.Maui.Controls.resources.dll => 302
	i32 u0x5aaa0216, ; 340: Microsoft.Extensions.FileSystemGlobbing => 193
	i32 u0x5b9331b6, ; 341: System.Diagnostics.TextWriterTraceListener => 31
	i32 u0x5be451c7, ; 342: lib_Xamarin.AndroidX.Browser.dll.so => 219
	i32 u0x5bf8ca0f, ; 343: System.Text.RegularExpressions.dll => 139
	i32 u0x5bfdbb43, ; 344: System.Reflection.Emit.dll => 93
	i32 u0x5c2ef6eb, ; 345: Microsoft.AspNetCore.Components.WebView.Maui.dll => 180
	i32 u0x5c680b40, ; 346: System.Reflection.Extensions.dll => 94
	i32 u0x5c7be408, ; 347: sk/Microsoft.Maui.Controls.resources.dll => 322
	i32 u0x5cabc9a4, ; 348: fr/Microsoft.Maui.Controls.resources => 305
	i32 u0x5d552ab7, ; 349: System.IO.FileSystem.Primitives => 49
	i32 u0x5d5a6c40, ; 350: System.Threading.Tasks.Dataflow.dll => 142
	i32 u0x5dccd455, ; 351: System.Runtime.Serialization.Json => 113
	i32 u0x5e0b6fdc, ; 352: Xamarin.KotlinX.Serialization.Core.Jvm.dll => 296
	i32 u0x5e2d7514, ; 353: System.Threading.Overlapped => 141
	i32 u0x5e2e3abe, ; 354: lib_Microsoft.VisualBasic.Core.dll.so => 2
	i32 u0x5e33306d, ; 355: sv/Microsoft.Maui.Controls.resources => 323
	i32 u0x5e5114e2, ; 356: Xamarin.AndroidX.DocumentFile.dll => 233
	i32 u0x5e7321d2, ; 357: lib_System.ComponentModel.Primitives.dll.so => 16
	i32 u0x5e832359, ; 358: lib_Microsoft.AspNetCore.Authorization.dll.so => 175
	i32 u0x5ed5f779, ; 359: zh-Hant/Microsoft.Maui.Controls.resources => 330
	i32 u0x5ef2ee25, ; 360: System.Runtime.Serialization.dll => 116
	i32 u0x5f3ec4dd, ; 361: Xamarin.Google.ErrorProne.Annotations => 285
	i32 u0x5f6f0b5b, ; 362: System.Xml.Serialization => 158
	i32 u0x5fa7b851, ; 363: System.Net.WebClient => 77
	i32 u0x6078995d, ; 364: System.Net.WebSockets.Client.dll => 80
	i32 u0x60892624, ; 365: lib_System.Formats.Tar.dll.so => 39
	i32 u0x60b0136a, ; 366: Xamarin.AndroidX.Loader.dll => 257
	i32 u0x60b33958, ; 367: System.Dynamic.Runtime => 37
	i32 u0x60d97228, ; 368: Xamarin.AndroidX.ViewPager2 => 279
	i32 u0x60ec189c, ; 369: lib_Xamarin.AndroidX.Arch.Core.Runtime.dll.so => 218
	i32 u0x61533167, ; 370: Microsoft.Extensions.Configuration.Json => 186
	i32 u0x6176eff7, ; 371: Xamarin.AndroidX.Emoji2.ViewsHelper => 237
	i32 u0x6188ba7e, ; 372: Xamarin.AndroidX.CursorAdapter => 230
	i32 u0x61b9038d, ; 373: System.Net.Http.dll => 65
	i32 u0x61c036ca, ; 374: System.Text.RegularExpressions => 139
	i32 u0x61d59e0e, ; 375: System.ComponentModel.EventBasedAsync.dll => 15
	i32 u0x62021776, ; 376: lib_System.IO.Compression.dll.so => 46
	i32 u0x620a8774, ; 377: lib_System.Xml.ReaderWriter.dll.so => 157
	i32 u0x625755ef, ; 378: lib_WindowsBase.dll.so => 166
	i32 u0x62a37b76, ; 379: Microsoft.AspNetCore.Components.WebView => 179
	i32 u0x62c6282e, ; 380: System.Runtime => 117
	i32 u0x62cec1a2, ; 381: lib_Xamarin.KotlinX.Coroutines.Core.Jvm.dll.so => 294
	i32 u0x62d15ecc, ; 382: GestorConciertos.Shared.dll => 332
	i32 u0x62d6c1e4, ; 383: Xamarin.AndroidX.Tracing.Tracing.dll => 273
	i32 u0x62d6ea10, ; 384: Xamarin.Google.Android.Material.dll => 282
	i32 u0x638b1991, ; 385: Xamarin.AndroidX.ConstraintLayout => 225
	i32 u0x63dee9da, ; 386: System.IO.FileSystem.DriveInfo.dll => 48
	i32 u0x63fca3d0, ; 387: System.Net.Primitives.dll => 71
	i32 u0x640c0103, ; 388: System.Net.WebSockets => 81
	i32 u0x641f3e5a, ; 389: System.Security.Cryptography => 127
	i32 u0x64d1e4f5, ; 390: System.Reflection.Metadata => 95
	i32 u0x6525abc9, ; 391: System.Security.Cryptography.Csp => 122
	i32 u0x654240fb, ; 392: Xamarin.Kotlin.StdLib.Common => 289
	i32 u0x654b1498, ; 393: lib_System.Transactions.Local.dll.so => 150
	i32 u0x656b7698, ; 394: System.Diagnostics.Debug.dll => 26
	i32 u0x6670b12e, ; 395: lib_System.Security.AccessControl.dll.so => 118
	i32 u0x66888819, ; 396: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 247
	i32 u0x66e27484, ; 397: System.Reflection.dll => 98
	i32 u0x66ffb0f8, ; 398: System.Diagnostics.FileVersionInfo.dll => 28
	i32 u0x6715dc86, ; 399: Xamarin.AndroidX.CardView.dll => 220
	i32 u0x67577fe1, ; 400: lib_System.Runtime.CompilerServices.VisualC.dll.so => 103
	i32 u0x677cd287, ; 401: ro/Microsoft.Maui.Controls.resources.dll => 320
	i32 u0x67fe8db2, ; 402: System.Transactions.Local.dll => 150
	i32 u0x68139a0d, ; 403: System.IO.Pipelines.dll => 54
	i32 u0x6816ab6a, ; 404: Mono.Android.Export => 170
	i32 u0x6853a83d, ; 405: Microsoft.Win32.Primitives.dll => 4
	i32 u0x68cc9d1e, ; 406: System.Resources.Reader.dll => 99
	i32 u0x68eb6e69, ; 407: Microsoft.AspNetCore.Components.Web.dll => 178
	i32 u0x68f61ae4, ; 408: lib_System.Formats.Asn1.dll.so => 38
	i32 u0x690d4b7d, ; 409: lib-zh-Hant-Microsoft.Maui.Controls.resources.dll.so => 330
	i32 u0x69239124, ; 410: System.Diagnostics.TraceSource.dll => 33
	i32 u0x693efa35, ; 411: lib_System.Net.WebHeaderCollection.dll.so => 78
	i32 u0x6942234e, ; 412: System.Reflection.Extensions => 94
	i32 u0x6947f945, ; 413: Xamarin.AndroidX.SwipeRefreshLayout => 272
	i32 u0x6988f147, ; 414: Microsoft.Extensions.Logging.dll => 194
	i32 u0x69ae5451, ; 415: lib_System.Runtime.InteropServices.JavaScript.dll.so => 106
	i32 u0x69dc03cc, ; 416: System.Core.dll => 21
	i32 u0x69ec0683, ; 417: System.Globalization.Extensions.dll => 41
	i32 u0x69f4f41d, ; 418: lib_Xamarin.AndroidX.AppCompat.dll.so => 215
	i32 u0x6a216153, ; 419: Mono.Android.Runtime.dll => 171
	i32 u0x6a539b49, ; 420: lib_System.Runtime.Extensions.dll.so => 104
	i32 u0x6a96652d, ; 421: Xamarin.AndroidX.Fragment => 239
	i32 u0x6afaf338, ; 422: lib_System.Threading.dll.so => 149
	i32 u0x6b645ada, ; 423: lib-fr-Microsoft.Maui.Controls.resources.dll.so => 305
	i32 u0x6bbb2a76, ; 424: lib_Microsoft.Extensions.FileProviders.Abstractions.dll.so => 189
	i32 u0x6bcd3296, ; 425: Xamarin.AndroidX.Loader => 257
	i32 u0x6be1e423, ; 426: nb/Microsoft.Maui.Controls.resources => 315
	i32 u0x6c111525, ; 427: Xamarin.Kotlin.StdLib.dll => 288
	i32 u0x6c13413e, ; 428: Xamarin.Google.Android.Material => 282
	i32 u0x6c5562e0, ; 429: lib_Xamarin.KotlinX.Coroutines.Core.dll.so => 293
	i32 u0x6c652ce8, ; 430: Xamarin.AndroidX.Navigation.UI.dll => 262
	i32 u0x6c687fa7, ; 431: Microsoft.VisualBasic.Core => 2
	i32 u0x6c96614d, ; 432: hu/Microsoft.Maui.Controls.resources => 309
	i32 u0x6cbab720, ; 433: System.Text.Encoding.Extensions => 135
	i32 u0x6cc30c8c, ; 434: System.Runtime.Serialization.Formatters => 112
	i32 u0x6cf3d432, ; 435: lib_Xamarin.AndroidX.VersionedParcelable.dll.so => 277
	i32 u0x6cff90ba, ; 436: Microsoft.Extensions.Logging.Abstractions.dll => 195
	i32 u0x6dcaebf7, ; 437: uk/Microsoft.Maui.Controls.resources.dll => 326
	i32 u0x6e1ed932, ; 438: Xamarin.Android.Glide.Annotations => 207
	i32 u0x6ec71a65, ; 439: System.Linq.Expressions => 59
	i32 u0x6f7a29e4, ; 440: System.Reflection.Primitives => 96
	i32 u0x6fab02f2, ; 441: lib_Xamarin.AndroidX.ConstraintLayout.dll.so => 225
	i32 u0x7009e4c3, ; 442: System.Formats.Tar.dll => 39
	i32 u0x705fa726, ; 443: Xamarin.AndroidX.Arch.Core.Runtime.dll => 218
	i32 u0x7070c6c0, ; 444: lib-zh-Hans-Microsoft.Maui.Controls.resources.dll.so => 329
	i32 u0x70972b6d, ; 445: System.Diagnostics.Contracts => 25
	i32 u0x70a66bdd, ; 446: System.Reflection.Metadata.dll => 95
	i32 u0x7124cf39, ; 447: System.Reflection.DispatchProxy => 90
	i32 u0x71490522, ; 448: System.Resources.ResourceManager.dll => 100
	i32 u0x71dc7c8b, ; 449: System.Collections.NonGeneric.dll => 10
	i32 u0x72fcebde, ; 450: lib_Xamarin.AndroidX.AppCompat.AppCompatResources.dll.so => 216
	i32 u0x731dd955, ; 451: lib_Mono.Android.dll.so => 172
	i32 u0x739bd4a8, ; 452: System.Private.Xml.Linq => 88
	i32 u0x73b20433, ; 453: lib_System.IO.FileSystem.Primitives.dll.so => 49
	i32 u0x73fbecbe, ; 454: lib_System.Memory.dll.so => 63
	i32 u0x74126030, ; 455: lib_System.Net.WebClient.dll.so => 77
	i32 u0x74a1c5bb, ; 456: System.Resources.Writer => 101
	i32 u0x74d743bf, ; 457: ja/Microsoft.Maui.Controls.resources => 312
	i32 u0x74eee4ef, ; 458: Xamarin.AndroidX.Security.SecurityCrypto.dll => 269
	i32 u0x75533a5e, ; 459: Microsoft.Extensions.Configuration.dll => 182
	i32 u0x7593c33f, ; 460: lib_System.IO.FileSystem.AccessControl.dll.so => 47
	i32 u0x7634913f, ; 461: Xamarin.Kotlin.StdLib.Common.dll => 289
	i32 u0x765c50a4, ; 462: Xamarin.Android.Glide.GifDecoder => 209
	i32 u0x77d08969, ; 463: lib_Microsoft.Extensions.Configuration.FileExtensions.dll.so => 185
	i32 u0x77ec19b4, ; 464: System.Buffers.dll => 7
	i32 u0x781074ce, ; 465: hr/Microsoft.Maui.Controls.resources => 308
	i32 u0x784d3e49, ; 466: lib_System.Net.dll.so => 82
	i32 u0x785e97f1, ; 467: Xamarin.AndroidX.Lifecycle.ViewModel => 253
	i32 u0x78b622b1, ; 468: ar/Microsoft.Maui.Controls.resources.dll => 297
	i32 u0x790376c9, ; 469: lib_Xamarin.AndroidX.Annotation.Experimental.dll.so => 213
	i32 u0x791a414b, ; 470: Xamarin.Android.Glide => 206
	i32 u0x7970be4f, ; 471: lib-he-Microsoft.Maui.Controls.resources.dll.so => 306
	i32 u0x79d00016, ; 472: it/Microsoft.Maui.Controls.resources => 311
	i32 u0x79eb68ee, ; 473: System.Private.Xml => 89
	i32 u0x7a16417d, ; 474: Microsoft.Extensions.Configuration.Binder.dll => 184
	i32 u0x7a80bd4e, ; 475: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 246
	i32 u0x7aabe35d, ; 476: lib_Microsoft.Extensions.FileProviders.Embedded.dll.so => 191
	i32 u0x7aca0819, ; 477: System.Windows.dll => 155
	i32 u0x7b350579, ; 478: lib__Microsoft.Android.Resource.Designer.dll.so => 333
	i32 u0x7b473a37, ; 479: lib_Xamarin.AndroidX.Fragment.Ktx.dll.so => 240
	i32 u0x7b6f419e, ; 480: System.Diagnostics.TraceSource => 33
	i32 u0x7b864712, ; 481: Microsoft.Extensions.FileProviders.Physical => 192
	i32 u0x7b8f6ff7, ; 482: lib_System.Runtime.Serialization.Json.dll.so => 113
	i32 u0x7bf8cdab, ; 483: System.Runtime.dll => 117
	i32 u0x7c51ebd4, ; 484: lib_System.Net.HttpListener.dll.so => 66
	i32 u0x7c9bf920, ; 485: System.Numerics.Vectors => 83
	i32 u0x7d702d52, ; 486: lib_System.Text.Encoding.dll.so => 136
	i32 u0x7ec9ffe9, ; 487: System.Console => 20
	i32 u0x7fb38cd2, ; 488: System.Collections.Specialized => 11
	i32 u0x7fc7a41e, ; 489: System.Xml.XmlSerializer.dll => 163
	i32 u0x7fd90a71, ; 490: lib_System.Text.Encoding.CodePages.dll.so => 134
	i32 u0x7fdcdc37, ; 491: lib-ko-Microsoft.Maui.Controls.resources.dll.so => 313
	i32 u0x7ff65cf5, ; 492: Microsoft.VisualBasic.dll => 3
	i32 u0x802a7166, ; 493: lib_System.Diagnostics.FileVersionInfo.dll.so => 28
	i32 u0x8030853e, ; 494: ko/Microsoft.Maui.Controls.resources => 313
	i32 u0x8044e1bd, ; 495: lib-ms-Microsoft.Maui.Controls.resources.dll.so => 314
	i32 u0x8081c489, ; 496: lib_Jsr305Binding.dll.so => 283
	i32 u0x80bd55ad, ; 497: Microsoft.Maui => 202
	i32 u0x80f2f56e, ; 498: lib_System.Runtime.Serialization.Formatters.dll.so => 112
	i32 u0x810c11c2, ; 499: ro/Microsoft.Maui.Controls.resources => 320
	i32 u0x8115bdf3, ; 500: lib_System.Resources.ResourceManager.dll.so => 100
	i32 u0x816751d8, ; 501: lib_System.Diagnostics.DiagnosticSource.dll.so => 27
	i32 u0x81a110ae, ; 502: lib_System.ComponentModel.EventBasedAsync.dll.so => 15
	i32 u0x820d22b3, ; 503: Microsoft.Extensions.Options.dll => 197
	i32 u0x82364da2, ; 504: lib_System.Buffers.dll.so => 7
	i32 u0x82a8237c, ; 505: Microsoft.Extensions.Logging.Abstractions => 195
	i32 u0x82b6c85e, ; 506: System.ObjectModel.dll => 85
	i32 u0x82bb5429, ; 507: lib_System.Linq.Expressions.dll.so => 59
	i32 u0x82c1cf3e, ; 508: lib_System.Net.Quic.dll.so => 72
	i32 u0x832ec206, ; 509: lib_System.Diagnostics.StackTrace.dll.so => 30
	i32 u0x83323b38, ; 510: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 294
	i32 u0x8334206b, ; 511: System.Net.Http => 65
	i32 u0x842e93b2, ; 512: Xamarin.AndroidX.VectorDrawable.Animated.dll => 276
	i32 u0x8471e4ec, ; 513: System.Threading.Tasks.Parallel => 144
	i32 u0x857e4dd2, ; 514: lib_System.Net.WebSockets.dll.so => 81
	i32 u0x85cc8d80, ; 515: Xamarin.AndroidX.LocalBroadcastManager => 258
	i32 u0x8628f1a4, ; 516: lib-ru-Microsoft.Maui.Controls.resources.dll.so => 321
	i32 u0x863c6ac5, ; 517: System.Xml.Serialization.dll => 158
	i32 u0x867c9c52, ; 518: System.Globalization.Extensions => 41
	i32 u0x86b0fd78, ; 519: lib_Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll.so => 255
	i32 u0x86bba59b, ; 520: lib_Microsoft.Maui.Controls.dll.so => 200
	i32 u0x8702d9a2, ; 521: System.Security.AccessControl.dll => 118
	i32 u0x871c9c1b, ; 522: Microsoft.Extensions.Configuration.Abstractions => 183
	i32 u0x872eeb7b, ; 523: Xamarin.Android.Glide.DiskLruCache.dll => 208
	i32 u0x875633cc, ; 524: fr/Microsoft.Maui.Controls.resources.dll => 305
	i32 u0x87a1a22b, ; 525: lib-it-Microsoft.Maui.Controls.resources.dll.so => 311
	i32 u0x87e25095, ; 526: Xamarin.AndroidX.RecyclerView.dll => 265
	i32 u0x87e7fdbb, ; 527: lib-nl-Microsoft.Maui.Controls.resources.dll.so => 316
	i32 u0x881f94da, ; 528: lib_netstandard.dll.so => 168
	i32 u0x8873eb17, ; 529: th/Microsoft.Maui.Controls.resources => 324
	i32 u0x887ae6a1, ; 530: lib_Xamarin.AndroidX.Lifecycle.Runtime.Android.dll.so => 250
	i32 u0x88acefcd, ; 531: System.ServiceModel.Web.dll => 132
	i32 u0x88d8bfaa, ; 532: System.Net.Sockets => 76
	i32 u0x88ffe49e, ; 533: System.Net.Mail => 67
	i32 u0x896b7878, ; 534: System.Private.CoreLib.dll => 173
	i32 u0x8a068af2, ; 535: Xamarin.AndroidX.Annotation.dll => 212
	i32 u0x8a52059a, ; 536: System.Threading.Tasks.Parallel.dll => 144
	i32 u0x8a92797b, ; 537: lib_Xamarin.AndroidX.DocumentFile.dll.so => 233
	i32 u0x8b804dbf, ; 538: System.Runtime.InteropServices.RuntimeInformation.dll => 107
	i32 u0x8bbaa2cd, ; 539: System.ValueTuple => 152
	i32 u0x8c20c628, ; 540: lib-fi-Microsoft.Maui.Controls.resources.dll.so => 304
	i32 u0x8c20f140, ; 541: lib_System.Console.dll.so => 20
	i32 u0x8c40e0db, ; 542: System.Net.Primitives => 71
	i32 u0x8d19e4a2, ; 543: lib_Xamarin.AndroidX.Lifecycle.LiveData.dll.so => 245
	i32 u0x8d24e767, ; 544: System.Xml.ReaderWriter.dll => 157
	i32 u0x8d3fac99, ; 545: tr/Microsoft.Maui.Controls.resources => 325
	i32 u0x8d52b2e2, ; 546: Microsoft.Extensions.Configuration => 182
	i32 u0x8d52d3de, ; 547: lib_System.Threading.Tasks.dll.so => 145
	i32 u0x8dc6dbce, ; 548: System.Security.Cryptography.Csp.dll => 122
	i32 u0x8dcb0101, ; 549: lib_Xamarin.AndroidX.Navigation.Fragment.dll.so => 260
	i32 u0x8e02310f, ; 550: lib-ar-Microsoft.Maui.Controls.resources.dll.so => 297
	i32 u0x8e114655, ; 551: System.Security.Principal.Windows.dll => 128
	i32 u0x8e14e237, ; 552: lib_Microsoft.Extensions.FileSystemGlobbing.dll.so => 193
	i32 u0x8e3c8202, ; 553: lib_Microsoft.AspNetCore.Components.dll.so => 176
	i32 u0x8f24faee, ; 554: System.Web.HttpUtility => 153
	i32 u0x8f41c524, ; 555: Xamarin.AndroidX.Emoji2.dll => 236
	i32 u0x8f4e087a, ; 556: lib_System.Web.dll.so => 154
	i32 u0x8f8c64e2, ; 557: lib_System.Private.Xml.dll.so => 89
	i32 u0x8fb9f4b2, ; 558: Microsoft.AspNetCore.Components => 176
	i32 u0x905355ed, ; 559: System.Threading.Tasks.Dataflow => 142
	i32 u0x905caa9d, ; 560: nl/Microsoft.Maui.Controls.resources => 316
	i32 u0x906d466b, ; 561: Xamarin.AndroidX.Collection.Ktx.dll => 223
	i32 u0x90e50509, ; 562: lib_System.Reflection.Primitives.dll.so => 96
	i32 u0x911615a7, ; 563: lib_Xamarin.AndroidX.Fragment.dll.so => 239
	i32 u0x912896e5, ; 564: System.Console.dll => 20
	i32 u0x9130f5e7, ; 565: System.ComponentModel.DataAnnotations.dll => 14
	i32 u0x919672ca, ; 566: Microsoft.JSInterop.dll => 199
	i32 u0x91abdf3a, ; 567: lib_Xamarin.AndroidX.Startup.StartupRuntime.dll.so => 271
	i32 u0x924edee6, ; 568: System.Text.Encoding.dll => 136
	i32 u0x928c75ca, ; 569: System.Net.Sockets.dll => 76
	i32 u0x92916334, ; 570: System.Linq.Parallel.dll => 60
	i32 u0x92f50938, ; 571: Xamarin.AndroidX.ConstraintLayout.Core.dll => 226
	i32 u0x93554fdc, ; 572: netstandard.dll => 168
	i32 u0x93634cc0, ; 573: lib_Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll.so => 247
	i32 u0x93918882, ; 574: Java.Interop.dll => 169
	i32 u0x93dba8a1, ; 575: Microsoft.Maui.Controls => 200
	i32 u0x940d5c2f, ; 576: System.ComponentModel.EventBasedAsync => 15
	i32 u0x94147f61, ; 577: System.Net.ServicePoint => 75
	i32 u0x9438d78e, ; 578: lib_System.Text.Json.dll.so => 138
	i32 u0x9469ba86, ; 579: lib_Xamarin.AndroidX.Lifecycle.Runtime.dll.so => 249
	i32 u0x94798bc5, ; 580: System.AppContext.dll => 6
	i32 u0x94a1db18, ; 581: lib-id-Microsoft.Maui.Controls.resources.dll.so => 310
	i32 u0x94fad8e5, ; 582: lib_Xamarin.AndroidX.Activity.Ktx.dll.so => 211
	i32 u0x95178668, ; 583: System.Data.DataSetExtensions => 23
	i32 u0x955cf248, ; 584: Xamarin.AndroidX.Lifecycle.Runtime.dll => 249
	i32 u0x9593ae7f, ; 585: lib_Xamarin.AndroidX.SavedState.dll.so => 267
	i32 u0x963ac2da, ; 586: sk/Microsoft.Maui.Controls.resources => 322
	i32 u0x9659e17c, ; 587: Xamarin.Android.Glide.dll => 206
	i32 u0x96bea474, ; 588: lib_Microsoft.Maui.Controls.Xaml.dll.so => 201
	i32 u0x9737ca08, ; 589: Microsoft.AspNetCore.Authorization => 175
	i32 u0x974b89a2, ; 590: System.Reflection.Emit.Lightweight.dll => 92
	i32 u0x98ba5a04, ; 591: Microsoft.CSharp => 1
	i32 u0x9930ee42, ; 592: System.Text.Encodings.Web => 137
	i32 u0x999dcf0d, ; 593: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.Android => 252
	i32 u0x99e2e424, ; 594: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 251
	i32 u0x99e370f2, ; 595: Xamarin.AndroidX.VectorDrawable.dll => 275
	i32 u0x9a1756ac, ; 596: System.Text.Encoding.Extensions.dll => 135
	i32 u0x9a20430d, ; 597: System.Net.Ping => 70
	i32 u0x9a206149, ; 598: Microsoft.AspNetCore.Components.Forms => 177
	i32 u0x9a5a3337, ; 599: System.Threading.ThreadPool => 147
	i32 u0x9a83ffe1, ; 600: Microsoft.Extensions.FileProviders.Abstractions => 189
	i32 u0x9b24ab96, ; 601: lib_System.Runtime.Serialization.Primitives.dll.so => 114
	i32 u0x9b500441, ; 602: Xamarin.KotlinX.Coroutines.Core.Jvm => 294
	i32 u0x9b5e5b1c, ; 603: lib_System.Diagnostics.Contracts.dll.so => 25
	i32 u0x9be14c08, ; 604: Xamarin.AndroidX.Fragment.Ktx => 240
	i32 u0x9bf052c1, ; 605: Microsoft.Extensions.Logging.Debug.dll => 196
	i32 u0x9bfe3a41, ; 606: System.Private.Xml.dll => 89
	i32 u0x9c165ff9, ; 607: System.Reflection.TypeExtensions.dll => 97
	i32 u0x9c375496, ; 608: Xamarin.AndroidX.CursorAdapter.dll => 230
	i32 u0x9c70e6c9, ; 609: Xamarin.AndroidX.DynamicAnimation => 235
	i32 u0x9c96ac4c, ; 610: lib_Xamarin.AndroidX.Navigation.UI.dll.so => 262
	i32 u0x9c97ad4a, ; 611: System.Diagnostics.TextWriterTraceListener.dll => 31
	i32 u0x9cc03a58, ; 612: System.IO.Compression.ZipFile.dll => 45
	i32 u0x9cd341b2, ; 613: lib_System.Threading.Tasks.Parallel.dll.so => 144
	i32 u0x9cf12c56, ; 614: Xamarin.AndroidX.Lifecycle.LiveData => 245
	i32 u0x9e78dac1, ; 615: lib_Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll.so => 256
	i32 u0x9ec022c0, ; 616: Xamarin.Android.Glide.DiskLruCache => 208
	i32 u0x9ec4cf01, ; 617: System.Runtime.Loader => 110
	i32 u0x9ecf752a, ; 618: System.Xml.XDocument.dll => 159
	i32 u0x9ee0268c, ; 619: lib_GestorConciertos.Services.dll.so => 331
	i32 u0x9ee22cc0, ; 620: System.Drawing.Primitives => 35
	i32 u0x9f3b757e, ; 621: Xamarin.KotlinX.Coroutines.Core => 293
	i32 u0x9f7ea921, ; 622: lib_System.Runtime.InteropServices.dll.so => 108
	i32 u0x9f8c6f40, ; 623: System.Data.Common.dll => 22
	i32 u0xa026a50c, ; 624: System.Runtime.Serialization.Xml.dll => 115
	i32 u0xa075d95f, ; 625: Microsoft.AspNetCore.Components.WebView.dll => 179
	i32 u0xa090e36a, ; 626: System.IO.dll => 58
	i32 u0xa0fb56af, ; 627: lib_System.Text.RegularExpressions.dll.so => 139
	i32 u0xa0ff7514, ; 628: Xamarin.AndroidX.Tracing.Tracing => 273
	i32 u0xa1b0ee45, ; 629: lib_Xamarin.Kotlin.StdLib.Common.dll.so => 289
	i32 u0xa1d8b647, ; 630: System.Threading.Tasks.dll => 145
	i32 u0xa1fd7d9f, ; 631: System.Security.Claims => 119
	i32 u0xa21f5a1f, ; 632: System.Security.Cryptography.Cng.dll => 121
	i32 u0xa25c90e5, ; 633: lib_Xamarin.AndroidX.Core.dll.so => 228
	i32 u0xa262a30f, ; 634: System.Runtime.Numerics.dll => 111
	i32 u0xa2ce8457, ; 635: lib-es-Microsoft.Maui.Controls.resources.dll.so => 303
	i32 u0xa2e0939b, ; 636: Xamarin.AndroidX.Activity => 210
	i32 u0xa30769e5, ; 637: System.Threading.Channels => 140
	i32 u0xa30e6e06, ; 638: Microsoft.AspNetCore.Authorization.dll => 175
	i32 u0xa32eb6f0, ; 639: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 216
	i32 u0xa35f8f92, ; 640: System.IO.Pipes.AccessControl => 55
	i32 u0xa3c818c7, ; 641: lib_System.Net.WebSockets.Client.dll.so => 80
	i32 u0xa3cc7fa7, ; 642: System.Runtime.InteropServices.JavaScript => 106
	i32 u0xa4672f3b, ; 643: Microsoft.Maui.Controls.Xaml => 201
	i32 u0xa493aa02, ; 644: lib_System.Collections.Concurrent.dll.so => 8
	i32 u0xa4caf7a7, ; 645: Microsoft.Maui.dll => 202
	i32 u0xa4d4aaf8, ; 646: lib_System.Security.Cryptography.Cng.dll.so => 121
	i32 u0xa4db22c6, ; 647: System.Text.Encoding.CodePages.dll => 134
	i32 u0xa4e79dfd, ; 648: Xamarin.AndroidX.Lifecycle.ViewModel.Android.dll => 254
	i32 u0xa522693c, ; 649: Xamarin.Jetbrains.Annotations.dll => 287
	i32 u0xa52ac270, ; 650: lib_Xamarin.AndroidX.Window.dll.so => 280
	i32 u0xa553c739, ; 651: lib_System.ValueTuple.dll.so => 152
	i32 u0xa5a0a402, ; 652: Xamarin.AndroidX.ViewPager.dll => 278
	i32 u0xa5b3182d, ; 653: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 266
	i32 u0xa5b67c07, ; 654: Xamarin.AndroidX.Lifecycle.Common.Jvm.dll => 244
	i32 u0xa5c5753c, ; 655: lib_System.Collections.Immutable.dll.so => 9
	i32 u0xa5ea80d9, ; 656: lib_Xamarin.Android.Glide.Annotations.dll.so => 207
	i32 u0xa6133c7f, ; 657: lib_System.IO.FileSystem.DriveInfo.dll.so => 48
	i32 u0xa630ecdd, ; 658: Xamarin.AndroidX.Fragment.Ktx.dll => 240
	i32 u0xa64baf69, ; 659: GestorConciertos.UI.dll => 0
	i32 u0xa668c988, ; 660: lib_System.Net.NameResolution.dll.so => 68
	i32 u0xa7008e0b, ; 661: Microsoft.Maui.Graphics => 204
	i32 u0xa7042ae3, ; 662: uk/Microsoft.Maui.Controls.resources => 326
	i32 u0xa715dd7e, ; 663: System.Xml.XPath.XDocument.dll => 160
	i32 u0xa741ef0b, ; 664: es/Microsoft.Maui.Controls.resources.dll => 303
	i32 u0xa744f665, ; 665: lib_Xamarin.AndroidX.Navigation.Runtime.dll.so => 261
	i32 u0xa78103bc, ; 666: Xamarin.AndroidX.CoordinatorLayout.dll => 227
	i32 u0xa8032c67, ; 667: lib_Microsoft.Win32.Registry.dll.so => 5
	i32 u0xa80db4e1, ; 668: System.Xml.dll => 164
	i32 u0xa81b119f, ; 669: lib_System.Security.Cryptography.dll.so => 127
	i32 u0xa8282c09, ; 670: System.ServiceProcess.dll => 133
	i32 u0xa8298928, ; 671: Xamarin.AndroidX.ResourceInspection.Annotation => 266
	i32 u0xa85a7b6c, ; 672: System.Xml.XmlDocument => 162
	i32 u0xa8c61dcb, ; 673: nl/Microsoft.Maui.Controls.resources.dll => 316
	i32 u0xa8e81f45, ; 674: Microsoft.AspNetCore.Metadata => 181
	i32 u0xa9379a4f, ; 675: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 255
	i32 u0xa9d96f9b, ; 676: System.Threading.Overlapped.dll => 141
	i32 u0xaa107fc4, ; 677: Xamarin.AndroidX.ViewPager => 278
	i32 u0xaa2b531f, ; 678: lib_System.Globalization.dll.so => 42
	i32 u0xaa36a797, ; 679: Xamarin.AndroidX.Transition => 274
	i32 u0xaa4e51ff, ; 680: el/Microsoft.Maui.Controls.resources => 302
	i32 u0xaa88e550, ; 681: Mono.Android.Export.dll => 170
	i32 u0xaa8a4878, ; 682: Microsoft.Maui.Essentials => 203
	i32 u0xab123e9a, ; 683: Xamarin.AndroidX.Activity.Ktx.dll => 211
	i32 u0xab5734d1, ; 684: lib_Microsoft.AspNetCore.Components.Forms.dll.so => 177
	i32 u0xab5f85c3, ; 685: Jsr305Binding.dll => 283
	i32 u0xab606289, ; 686: System.Globalization.Calendars.dll => 40
	i32 u0xabbc23e8, ; 687: lib_Xamarin.KotlinX.Serialization.Core.Jvm.dll.so => 296
	i32 u0xabdea79a, ; 688: ru/Microsoft.Maui.Controls.resources => 321
	i32 u0xabf58099, ; 689: Xamarin.AndroidX.ExifInterface => 238
	i32 u0xac1dd496, ; 690: System.Net.dll => 82
	i32 u0xac65a11d, ; 691: Microsoft.AspNetCore.Components.Web => 178
	i32 u0xacd6baa9, ; 692: System.IO.UnmanagedMemoryStream => 57
	i32 u0xace3f9b4, ; 693: System.Dynamic.Runtime.dll => 37
	i32 u0xace7ba82, ; 694: lib_System.Security.Principal.Windows.dll.so => 128
	i32 u0xacf080de, ; 695: System.Reflection => 98
	i32 u0xad2a79b6, ; 696: mscorlib.dll => 167
	i32 u0xad6f1e8a, ; 697: System.Private.CoreLib => 173
	i32 u0xad832c4a, ; 698: Microsoft.Extensions.FileProviders.Physical.dll => 192
	i32 u0xad90894d, ; 699: lib_Xamarin.KotlinX.Serialization.Core.dll.so => 295
	i32 u0xaddb6d38, ; 700: Xamarin.AndroidX.ViewPager2.dll => 279
	i32 u0xae037813, ; 701: System.Numerics.Vectors.dll => 83
	i32 u0xae1ce33f, ; 702: Xamarin.AndroidX.Annotation.Experimental.dll => 213
	i32 u0xaeb2d8a5, ; 703: lib_Microsoft.Extensions.Options.dll.so => 197
	i32 u0xaf06273c, ; 704: System.Resources.Reader => 99
	i32 u0xaf3a6b91, ; 705: lib_System.Diagnostics.Debug.dll.so => 26
	i32 u0xaf4af872, ; 706: System.Diagnostics.StackTrace.dll => 30
	i32 u0xaf624531, ; 707: System.Xml.XPath.XDocument => 160
	i32 u0xaf8b1081, ; 708: lib_Xamarin.AndroidX.SavedState.SavedState.Ktx.dll.so => 268
	i32 u0xb0682092, ; 709: System.ComponentModel.dll => 18
	i32 u0xb083f934, ; 710: lib_Microsoft.AspNetCore.Metadata.dll.so => 181
	i32 u0xb0ed41f3, ; 711: System.Security.Principal.Windows => 128
	i32 u0xb128f886, ; 712: System.Security.Cryptography.Algorithms.dll => 120
	i32 u0xb18af942, ; 713: Xamarin.AndroidX.DrawerLayout => 234
	i32 u0xb1a434a2, ; 714: lib_System.Xml.Linq.dll.so => 156
	i32 u0xb1a7d210, ; 715: lib_Xamarin.AndroidX.Lifecycle.Runtime.Ktx.Android.dll.so => 252
	i32 u0xb21220a3, ; 716: Xamarin.AndroidX.Security.SecurityCrypto => 269
	i32 u0xb223fa8c, ; 717: lib-cs-Microsoft.Maui.Controls.resources.dll.so => 299
	i32 u0xb28cab85, ; 718: lib_Xamarin.Android.Glide.DiskLruCache.dll.so => 208
	i32 u0xb294d40b, ; 719: lib_System.Net.Ping.dll.so => 70
	i32 u0xb2a03f9f, ; 720: Xamarin.AndroidX.Lifecycle.Process.dll => 248
	i32 u0xb3d3821c, ; 721: Xamarin.AndroidX.Startup.StartupRuntime => 271
	i32 u0xb434b64b, ; 722: WindowsBase.dll => 166
	i32 u0xb443fdf2, ; 723: Xamarin.AndroidX.Legacy.Support.Core.Utils => 242
	i32 u0xb514b305, ; 724: _Microsoft.Android.Resource.Designer.dll => 333
	i32 u0xb58d85d9, ; 725: lib_System.Runtime.Handles.dll.so => 105
	i32 u0xb593dd05, ; 726: lib_Microsoft.Extensions.FileProviders.Composite.dll.so => 190
	i32 u0xb62a9ccb, ; 727: Xamarin.AndroidX.SavedState.SavedState.Ktx => 268
	i32 u0xb63fa9f0, ; 728: Xamarin.AndroidX.Navigation.Common => 259
	i32 u0xb6490b5e, ; 729: lib_Mono.Android.Export.dll.so => 170
	i32 u0xb65adef9, ; 730: Mono.Android.Runtime => 171
	i32 u0xb660be12, ; 731: System.ComponentModel.Primitives => 16
	i32 u0xb6a153b2, ; 732: lib_Xamarin.AndroidX.ViewPager2.dll.so => 279
	i32 u0xb70c6fb4, ; 733: lib_Xamarin.AndroidX.VectorDrawable.dll.so => 275
	i32 u0xb755818f, ; 734: System.Threading.Tasks => 145
	i32 u0xb76be845, ; 735: hu/Microsoft.Maui.Controls.resources.dll => 309
	i32 u0xb7e7c341, ; 736: lib_System.Globalization.Calendars.dll.so => 40
	i32 u0xb838e2b0, ; 737: System.Security.Cryptography.X509Certificates.dll => 126
	i32 u0xb8c22b7f, ; 738: System.Security.Claims.dll => 119
	i32 u0xb8fd311b, ; 739: System.Formats.Asn1 => 38
	i32 u0xb979e222, ; 740: System.Runtime.Serialization => 116
	i32 u0xba0dbf1c, ; 741: System.IO.FileSystem.AccessControl.dll => 47
	i32 u0xba4127cb, ; 742: System.Threading.Tasks.Extensions => 143
	i32 u0xbaa520e7, ; 743: lib_System.ObjectModel.dll.so => 85
	i32 u0xbab301d1, ; 744: System.Security.AccessControl => 118
	i32 u0xbb95ee37, ; 745: System.Diagnostics.Tracing.dll => 34
	i32 u0xbba64c02, ; 746: GoogleGson.dll => 174
	i32 u0xbc4c6465, ; 747: System.Reflection.Primitives.dll => 96
	i32 u0xbc652da7, ; 748: System.IO.MemoryMappedFiles => 53
	i32 u0xbc98c93d, ; 749: lib_Xamarin.AndroidX.Collection.Jvm.dll.so => 222
	i32 u0xbcc610a0, ; 750: lib_System.Reflection.Metadata.dll.so => 95
	i32 u0xbd113355, ; 751: lib_Xamarin.AndroidX.Navigation.Common.dll.so => 259
	i32 u0xbd3726df, ; 752: lib_Microsoft.Extensions.Configuration.Binder.dll.so => 184
	i32 u0xbd78b0c8, ; 753: Xamarin.AndroidX.Navigation.Fragment.dll => 260
	i32 u0xbddce8a2, ; 754: lib_System.Security.Principal.dll.so => 129
	i32 u0xbe3f07c2, ; 755: lib_System.Runtime.CompilerServices.Unsafe.dll.so => 102
	i32 u0xbe4755f4, ; 756: System.Security.SecureString => 130
	i32 u0xbe592c0c, ; 757: System.Web => 154
	i32 u0xbefef58f, ; 758: System.Data.dll => 24
	i32 u0xbf506931, ; 759: System.Xml.XmlDocument.dll => 162
	i32 u0xbf6fd745, ; 760: Xamarin.AndroidX.DocumentFile => 233
	i32 u0xbff2e236, ; 761: System.Threading => 149
	i32 u0xc00e375b, ; 762: lib_Newtonsoft.Json.dll.so => 205
	i32 u0xc04c3c0a, ; 763: System.Runtime.Handles.dll => 105
	i32 u0xc095e070, ; 764: lib_Xamarin.AndroidX.Lifecycle.Common.dll.so => 243
	i32 u0xc1c6ebf4, ; 765: System.Reflection.DispatchProxy.dll => 90
	i32 u0xc217efb6, ; 766: lib_Xamarin.AndroidX.ConstraintLayout.Core.dll.so => 226
	i32 u0xc235e84d, ; 767: Xamarin.AndroidX.CardView => 220
	i32 u0xc2a37b91, ; 768: System.Linq.Queryable.dll => 61
	i32 u0xc2a993fa, ; 769: System.Threading.Tasks.Extensions.dll => 143
	i32 u0xc3428433, ; 770: lib_System.Reflection.Emit.ILGeneration.dll.so => 91
	i32 u0xc35f7fa4, ; 771: System.Resources.Writer.dll => 101
	i32 u0xc37f65ce, ; 772: Microsoft.Win32.Registry.dll => 5
	i32 u0xc3888e16, ; 773: System.ComponentModel.Annotations.dll => 13
	i32 u0xc3ba1d80, ; 774: lib_System.Security.Cryptography.Csp.dll.so => 122
	i32 u0xc4251ff9, ; 775: System.Security.Cryptography.Encoding => 123
	i32 u0xc4684d9e, ; 776: lib_System.Security.Cryptography.Algorithms.dll.so => 120
	i32 u0xc4a8494a, ; 777: System.Text.Encoding => 136
	i32 u0xc4e76306, ; 778: System.Diagnostics.FileVersionInfo => 28
	i32 u0xc591efe9, ; 779: lib_Microsoft.Extensions.Configuration.Abstractions.dll.so => 183
	i32 u0xc5b097e4, ; 780: System.Net.Requests.dll => 73
	i32 u0xc5b776df, ; 781: Xamarin.AndroidX.CustomView.dll => 231
	i32 u0xc5b79d28, ; 782: System.Data => 24
	i32 u0xc69f3b41, ; 783: lib_System.Data.dll.so => 24
	i32 u0xc71af05d, ; 784: Xamarin.AndroidX.Arch.Core.Runtime => 218
	i32 u0xc76e512c, ; 785: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 264
	i32 u0xc774da4f, ; 786: Xamarin.AndroidX.Navigation.Runtime => 261
	i32 u0xc7a3b0f0, ; 787: lib_Xamarin.AndroidX.Transition.dll.so => 274
	i32 u0xc7b797d0, ; 788: lib_Xamarin.AndroidX.Core.Core.Ktx.dll.so => 229
	i32 u0xc821fc10, ; 789: lib_System.ComponentModel.dll.so => 18
	i32 u0xc82afec1, ; 790: System.Text.Json => 138
	i32 u0xc8693088, ; 791: Xamarin.AndroidX.Activity.Ktx => 211
	i32 u0xc86c06e3, ; 792: Xamarin.AndroidX.Core => 228
	i32 u0xc8a662e9, ; 793: Java.Interop => 169
	i32 u0xc8d10307, ; 794: lib_System.Diagnostics.TraceSource.dll.so => 33
	i32 u0xc92a6809, ; 795: Xamarin.AndroidX.RecyclerView => 265
	i32 u0xca5de1fa, ; 796: System.Runtime.CompilerServices.Unsafe.dll => 102
	i32 u0xcae37e41, ; 797: System.Security.Cryptography.OpenSsl.dll => 124
	i32 u0xcaf7bd4b, ; 798: Xamarin.AndroidX.CustomView.PoolingContainer => 232
	i32 u0xcb0d0beb, ; 799: Microsoft.Extensions.FileProviders.Composite.dll => 190
	i32 u0xcb5af55c, ; 800: lib_System.Reflection.Emit.Lightweight.dll.so => 92
	i32 u0xcbeae9c6, ; 801: Microsoft.Extensions.Configuration.Binder => 184
	i32 u0xcc5af6ee, ; 802: Microsoft.Extensions.DependencyInjection.dll => 187
	i32 u0xcc6479a0, ; 803: System.Xml => 164
	i32 u0xcc7d82b4, ; 804: netstandard => 168
	i32 u0xcd1dd0db, ; 805: Xamarin.AndroidX.DynamicAnimation.dll => 235
	i32 u0xcd5a809f, ; 806: System.Formats.Tar => 39
	i32 u0xcdd8cd54, ; 807: lib_Xamarin.AndroidX.Emoji2.dll.so => 236
	i32 u0xce3fa116, ; 808: lib_System.Diagnostics.Process.dll.so => 29
	i32 u0xce70fda2, ; 809: hr/Microsoft.Maui.Controls.resources.dll => 308
	i32 u0xce7b5b88, ; 810: Microsoft.AspNetCore.Components.Forms.dll => 177
	i32 u0xcef19b37, ; 811: System.ComponentModel.TypeConverter.dll => 17
	i32 u0xcf3163e6, ; 812: Mono.Android => 172
	i32 u0xcf663a21, ; 813: ru/Microsoft.Maui.Controls.resources.dll => 321
	i32 u0xcfa20c36, ; 814: lib_Xamarin.AndroidX.SwipeRefreshLayout.dll.so => 272
	i32 u0xcfbaacae, ; 815: System.Text.Json.dll => 138
	i32 u0xcfd0c798, ; 816: System.Transactions => 151
	i32 u0xd0418592, ; 817: Xamarin.AndroidX.Concurrent.Futures.dll => 224
	i32 u0xd0558de2, ; 818: GestorConciertos.Services => 331
	i32 u0xd09dc5a0, ; 819: Microsoft.JSInterop => 199
	i32 u0xd0f73226, ; 820: lib_Xamarin.KotlinX.AtomicFU.Jvm.dll.so => 291
	i32 u0xd128d608, ; 821: System.Xml.Linq => 156
	i32 u0xd1854eb4, ; 822: System.Security.dll => 131
	i32 u0xd2757232, ; 823: System.Configuration => 19
	i32 u0xd2ff69f1, ; 824: System.Net.HttpListener => 66
	i32 u0xd310c033, ; 825: lib_Xamarin.Jetbrains.Annotations.dll.so => 287
	i32 u0xd328ac54, ; 826: vi/Microsoft.Maui.Controls.resources => 327
	i32 u0xd4045e1b, ; 827: lib_System.dll.so => 165
	i32 u0xd404ddfe, ; 828: lib_System.Runtime.Intrinsics.dll.so => 109
	i32 u0xd432d20b, ; 829: System.Threading.Timer => 148
	i32 u0xd457e5c9, ; 830: lib_Microsoft.CSharp.dll.so => 1
	i32 u0xd47cb45a, ; 831: lib_Xamarin.AndroidX.Arch.Core.Common.dll.so => 217
	i32 u0xd496c3c3, ; 832: lib_Xamarin.AndroidX.ExifInterface.dll.so => 238
	i32 u0xd4d2575b, ; 833: System.IO.FileSystem.AccessControl => 47
	i32 u0xd505225a, ; 834: lib_System.Xml.XPath.dll.so => 161
	i32 u0xd545a057, ; 835: lib_GestorConciertos.Shared.dll.so => 332
	i32 u0xd622b752, ; 836: lib-ro-Microsoft.Maui.Controls.resources.dll.so => 320
	i32 u0xd664cdf2, ; 837: de/Microsoft.Maui.Controls.resources => 301
	i32 u0xd6665034, ; 838: Xamarin.Android.Glide.GifDecoder.dll => 209
	i32 u0xd67a52b3, ; 839: System.Net.WebSockets.Client => 80
	i32 u0xd715a361, ; 840: System.Linq.dll => 62
	i32 u0xd7f95f5a, ; 841: da/Microsoft.Maui.Controls.resources => 300
	i32 u0xd804d57a, ; 842: System.Runtime.InteropServices.RuntimeInformation => 107
	i32 u0xd832fda6, ; 843: Xamarin.AndroidX.Print.dll => 263
	i32 u0xd889aee8, ; 844: lib_System.Threading.Channels.dll.so => 140
	i32 u0xd8950487, ; 845: Xamarin.AndroidX.Annotation.Experimental => 213
	i32 u0xd8bba49d, ; 846: lib_Xamarin.AndroidX.RecyclerView.dll.so => 265
	i32 u0xd8dbab5d, ; 847: System.IO.FileSystem.Primitives.dll => 49
	i32 u0xd90e5f5a, ; 848: Xamarin.AndroidX.Lifecycle.LiveData.Core => 246
	i32 u0xd92e86f1, ; 849: Xamarin.KotlinX.Serialization.Core.dll => 295
	i32 u0xd930cda0, ; 850: Xamarin.AndroidX.Navigation.Fragment => 260
	i32 u0xd943a729, ; 851: System.ComponentModel.DataAnnotations => 14
	i32 u0xd96cf6f7, ; 852: pt-BR/Microsoft.Maui.Controls.resources => 318
	i32 u0xd9f65f5e, ; 853: lib-el-Microsoft.Maui.Controls.resources.dll.so => 302
	i32 u0xd9fdda56, ; 854: Microsoft.Extensions.Configuration.Abstractions.dll => 183
	i32 u0xda2f27df, ; 855: System.Net.NetworkInformation => 69
	i32 u0xda4773dd, ; 856: he/Microsoft.Maui.Controls.resources => 306
	i32 u0xdabf74ac, ; 857: lib_Xamarin.AndroidX.Annotation.Jvm.dll.so => 214
	i32 u0xdae8aa5e, ; 858: Mono.Android.dll => 172
	i32 u0xdb7f7e5d, ; 859: Xamarin.AndroidX.Browser => 219
	i32 u0xdb9df1ce, ; 860: Xamarin.AndroidX.Concurrent.Futures => 224
	i32 u0xdbb50d93, ; 861: ms/Microsoft.Maui.Controls.resources => 314
	i32 u0xdc5370c5, ; 862: lib_System.Web.HttpUtility.dll.so => 153
	i32 u0xdc68940c, ; 863: zh-Hant/Microsoft.Maui.Controls.resources.dll => 330
	i32 u0xdc96bdf5, ; 864: System.Net.WebProxy.dll => 79
	i32 u0xdcefb51d, ; 865: Xamarin.AndroidX.Core.Core.Ktx.dll => 229
	i32 u0xdd864306, ; 866: System.Runtime.Intrinsics => 109
	i32 u0xdda814c6, ; 867: Xamarin.AndroidX.Annotation => 212
	i32 u0xdddc4e11, ; 868: Microsoft.Extensions.Configuration.Json.dll => 186
	i32 u0xde068c70, ; 869: Xamarin.AndroidX.Navigation.Common.dll => 259
	i32 u0xde7354ab, ; 870: System.Net.NameResolution => 68
	i32 u0xde7513c0, ; 871: Microsoft.AspNetCore.Metadata.dll => 181
	i32 u0xdecad304, ; 872: System.Net.Http.Json.dll => 64
	i32 u0xdf1b1ecd, ; 873: lib_System.ServiceProcess.dll.so => 133
	i32 u0xdf6f3870, ; 874: System.Diagnostics.DiagnosticSource => 27
	i32 u0xdf9a7f42, ; 875: System.Xml.XPath => 161
	i32 u0xdfd65a5d, ; 876: lib_System.Diagnostics.Tracing.dll.so => 34
	i32 u0xe005025e, ; 877: Microsoft.Extensions.Configuration.FileExtensions => 185
	i32 u0xe05b6245, ; 878: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.Android.dll => 252
	i32 u0xe082f700, ; 879: lib_Xamarin.AndroidX.Print.dll.so => 263
	i32 u0xe0ab2ef9, ; 880: lib_GestorConciertos.UI.dll.so => 0
	i32 u0xe12f62fc, ; 881: lib_System.Threading.ThreadPool.dll.so => 147
	i32 u0xe13414bb, ; 882: lib-hu-Microsoft.Maui.Controls.resources.dll.so => 309
	i32 u0xe1a41194, ; 883: lib_System.Xml.XDocument.dll.so => 159
	i32 u0xe1ae15d6, ; 884: Xamarin.AndroidX.Collection => 221
	i32 u0xe1eea3e4, ; 885: lib_System.IO.Compression.ZipFile.dll.so => 45
	i32 u0xe1f0a5d8, ; 886: lib_Xamarin.AndroidX.ViewPager.dll.so => 278
	i32 u0xe2098b0b, ; 887: System.Collections.NonGeneric => 10
	i32 u0xe250cda6, ; 888: lib_Microsoft.Extensions.Logging.dll.so => 194
	i32 u0xe2513246, ; 889: lib_System.Runtime.Numerics.dll.so => 111
	i32 u0xe27c1b41, ; 890: lib_Xamarin.KotlinX.AtomicFU.dll.so => 290
	i32 u0xe2a3f2e8, ; 891: System.Collections.Specialized.dll => 11
	i32 u0xe34ee011, ; 892: lib_System.IO.Pipelines.dll.so => 54
	i32 u0xe3774f52, ; 893: lib_System.IO.MemoryMappedFiles.dll.so => 53
	i32 u0xe3a54a09, ; 894: System.Net.WebProxy => 79
	i32 u0xe3c7860c, ; 895: lib_System.Security.Claims.dll.so => 119
	i32 u0xe3df9d2b, ; 896: System.Security.Cryptography.dll => 127
	i32 u0xe4436460, ; 897: System.Numerics.dll => 84
	i32 u0xe4fab729, ; 898: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 188
	i32 u0xe52378b9, ; 899: System.Net.Mail.dll => 67
	i32 u0xe56ef253, ; 900: System.Runtime.InteropServices.dll => 108
	i32 u0xe625b819, ; 901: lib_Xamarin.AndroidX.CardView.dll.so => 220
	i32 u0xe6b14171, ; 902: System.Net.HttpListener.dll => 66
	i32 u0xe6ca3640, ; 903: lib_Xamarin.AndroidX.Collection.Ktx.dll.so => 223
	i32 u0xe6e179fa, ; 904: System.Security.Principal => 129
	i32 u0xe6f98713, ; 905: System.Security.Cryptography.Encoding.dll => 123
	i32 u0xe797fcc1, ; 906: System.Net.WebHeaderCollection.dll => 78
	i32 u0xe79e77a6, ; 907: Xamarin.AndroidX.Transition.dll => 274
	i32 u0xe7a995e0, ; 908: GestorConciertos.Services.dll => 331
	i32 u0xe7c9e2bd, ; 909: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 264
	i32 u0xe7dc15ff, ; 910: zh-Hans/Microsoft.Maui.Controls.resources.dll => 329
	i32 u0xe839deed, ; 911: System.Collections.Concurrent.dll => 8
	i32 u0xe843daa0, ; 912: Xamarin.AndroidX.Core.dll => 228
	i32 u0xe89260c1, ; 913: Microsoft.VisualBasic.Core.dll => 2
	i32 u0xe90fdb70, ; 914: Xamarin.AndroidX.Collection.Jvm => 222
	i32 u0xe92ace5f, ; 915: lib_System.Linq.Parallel.dll.so => 60
	i32 u0xe99f7d24, ; 916: lib-tr-Microsoft.Maui.Controls.resources.dll.so => 325
	i32 u0xe9b2d35e, ; 917: System.IO.Compression.FileSystem.dll => 44
	i32 u0xe9b630ed, ; 918: Xamarin.AndroidX.VersionedParcelable.dll => 277
	i32 u0xea0092d6, ; 919: lib_System.Threading.Tasks.Extensions.dll.so => 143
	i32 u0xea213423, ; 920: System.Xml.ReaderWriter => 157
	i32 u0xea4780ec, ; 921: System.Security.Principal.dll => 129
	i32 u0xea4fb52e, ; 922: Xamarin.AndroidX.Navigation.UI => 262
	i32 u0xeab81858, ; 923: lib_Microsoft.Maui.Essentials.dll.so => 203
	i32 u0xeaf244cc, ; 924: lib_System.IO.Pipes.AccessControl.dll.so => 55
	i32 u0xeaf598f6, ; 925: lib_Microsoft.Extensions.Logging.Abstractions.dll.so => 195
	i32 u0xeb2ecede, ; 926: System.Data.DataSetExtensions.dll => 23
	i32 u0xeb5560c9, ; 927: lib_System.Runtime.InteropServices.RuntimeInformation.dll.so => 107
	i32 u0xebac8bfe, ; 928: System.Text.Encoding.CodePages => 134
	i32 u0xebb0254b, ; 929: lib_System.Net.NetworkInformation.dll.so => 69
	i32 u0xebc66336, ; 930: Xamarin.AndroidX.AppCompat.dll => 215
	i32 u0xec05582d, ; 931: Xamarin.AndroidX.Lifecycle.Process => 248
	i32 u0xed055aad, ; 932: lib_Microsoft.Extensions.Configuration.Json.dll.so => 186
	i32 u0xed1090ae, ; 933: lib_System.Net.Primitives.dll.so => 71
	i32 u0xed409aea, ; 934: th/Microsoft.Maui.Controls.resources.dll => 324
	i32 u0xed96d41f, ; 935: lib_Xamarin.AndroidX.CoordinatorLayout.dll.so => 227
	i32 u0xedadd6e2, ; 936: he/Microsoft.Maui.Controls.resources.dll => 306
	i32 u0xedf6669b, ; 937: lib_System.Drawing.dll.so => 36
	i32 u0xee9f991d, ; 938: System.Diagnostics.Process.dll => 29
	i32 u0xeeefb9c8, ; 939: lib_System.Dynamic.Runtime.dll.so => 37
	i32 u0xef5e8475, ; 940: Xamarin.AndroidX.Annotation.Jvm.dll => 214
	i32 u0xefd01a89, ; 941: System.IO.Pipelines => 54
	i32 u0xeff49a63, ; 942: System.Memory => 63
	i32 u0xeff49c4a, ; 943: lib_System.Text.Encoding.Extensions.dll.so => 135
	i32 u0xf09122fc, ; 944: lib_System.IO.IsolatedStorage.dll.so => 52
	i32 u0xf121f953, ; 945: lib_Xamarin.AndroidX.Lifecycle.LiveData.Core.dll.so => 246
	i32 u0xf1304331, ; 946: Microsoft.Maui.Controls.Xaml.dll => 201
	i32 u0xf15cb56d, ; 947: Xamarin.KotlinX.Serialization.Core => 295
	i32 u0xf1676aaa, ; 948: lib-da-Microsoft.Maui.Controls.resources.dll.so => 300
	i32 u0xf1ad867b, ; 949: System.Reflection.Emit.ILGeneration => 91
	i32 u0xf1e4b295, ; 950: GestorConciertos.UI => 0
	i32 u0xf27f60d1, ; 951: System.Private.Xml.Linq.dll => 88
	i32 u0xf29c5384, ; 952: id/Microsoft.Maui.Controls.resources => 310
	i32 u0xf2cd3649, ; 953: lib_Microsoft.JSInterop.dll.so => 199
	i32 u0xf2ce3c98, ; 954: System.Threading.dll => 149
	i32 u0xf2dd3fc4, ; 955: lib-ja-Microsoft.Maui.Controls.resources.dll.so => 312
	i32 u0xf323e0a6, ; 956: lib_Xamarin.Kotlin.StdLib.dll.so => 288
	i32 u0xf33c42ef, ; 957: lib_Xamarin.AndroidX.VectorDrawable.Animated.dll.so => 276
	i32 u0xf3a16066, ; 958: lib_Xamarin.AndroidX.Lifecycle.ViewModel.dll.so => 253
	i32 u0xf40add04, ; 959: Microsoft.Maui.Essentials.dll => 203
	i32 u0xf42589bc, ; 960: lib_System.Security.Cryptography.X509Certificates.dll.so => 126
	i32 u0xf45985cf, ; 961: System.Drawing.dll => 36
	i32 u0xf462c30d, ; 962: System.Private.Uri => 87
	i32 u0xf479582c, ; 963: Xamarin.AndroidX.Emoji2 => 236
	i32 u0xf47b0a29, ; 964: lib_System.Configuration.dll.so => 19
	i32 u0xf48143e5, ; 965: pt/Microsoft.Maui.Controls.resources.dll => 319
	i32 u0xf5185c24, ; 966: lib-pt-Microsoft.Maui.Controls.resources.dll.so => 319
	i32 u0xf53cb11d, ; 967: lib_System.Net.Security.dll.so => 74
	i32 u0xf5861a4f, ; 968: pl/Microsoft.Maui.Controls.resources => 317
	i32 u0xf5e94e90, ; 969: ms/Microsoft.Maui.Controls.resources.dll => 314
	i32 u0xf5f4f1f0, ; 970: Microsoft.Extensions.DependencyInjection => 187
	i32 u0xf5fdf056, ; 971: lib_Microsoft.Extensions.DependencyInjection.dll.so => 187
	i32 u0xf60736e2, ; 972: System.IO.FileSystem.Watcher => 50
	i32 u0xf6318da0, ; 973: System.AppContext => 6
	i32 u0xf73be021, ; 974: System.Reflection.Emit.ILGeneration.dll => 91
	i32 u0xf76edc75, ; 975: System.Core => 21
	i32 u0xf7e95c85, ; 976: System.Xml.XmlSerializer => 163
	i32 u0xf807b767, ; 977: System.Reflection.TypeExtensions => 97
	i32 u0xf83dd773, ; 978: System.IO.FileSystem.Watcher.dll => 50
	i32 u0xf86129d4, ; 979: lib-sv-Microsoft.Maui.Controls.resources.dll.so => 323
	i32 u0xf93ba7d4, ; 980: System.Runtime.Serialization.Primitives => 114
	i32 u0xf94a8f86, ; 981: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 256
	i32 u0xf97c5a99, ; 982: System.Security => 131
	i32 u0xf99dd9b9, ; 983: lib_Microsoft.AspNetCore.Components.WebView.dll.so => 179
	i32 u0xfa21f6af, ; 984: System.Net.WebClient.dll => 77
	i32 u0xfa50891f, ; 985: lib_System.Linq.dll.so => 62
	i32 u0xfa6ae1e2, ; 986: lib_Xamarin.AndroidX.Annotation.dll.so => 212
	i32 u0xfb0af295, ; 987: lib-zh-HK-Microsoft.Maui.Controls.resources.dll.so => 328
	i32 u0xfb1dad5d, ; 988: System.Diagnostics.DiagnosticSource.dll => 27
	i32 u0xfbc4b67c, ; 989: lib_System.IO.Compression.Brotli.dll.so => 43
	i32 u0xfc0a7526, ; 990: Xamarin.KotlinX.AtomicFU.Jvm.dll => 291
	i32 u0xfc5f7d36, ; 991: pt/Microsoft.Maui.Controls.resources => 319
	i32 u0xfdaee526, ; 992: Xamarin.AndroidX.Core.Core.Ktx => 229
	i32 u0xfdd1b433, ; 993: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 255
	i32 u0xfdf2741f, ; 994: System.Buffers => 7
	i32 u0xfe42d509, ; 995: lib_Xamarin.AndroidX.Security.SecurityCrypto.dll.so => 269
	i32 u0xfea12dee, ; 996: Microsoft.Maui.Controls.dll => 200
	i32 u0xfecef6ea, ; 997: System.Runtime.Numerics => 111
	i32 u0xff912ee3, ; 998: lib_System.Xml.Serialization.dll.so => 158
	i32 u0xffd4917f, ; 999: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 256
	i32 u0xfffb240a, ; 1000: Microsoft.Extensions.FileProviders.Embedded => 191
	i32 u0xfffce3e8 ; 1001: Xamarin.AndroidX.ExifInterface.dll => 238
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [1002 x i32] [
	i32 69, i32 73, i32 242, i32 68, i32 257, i32 163, i32 109, i32 188,
	i32 249, i32 286, i32 48, i32 205, i32 81, i32 326, i32 146, i32 291,
	i32 202, i32 298, i32 30, i32 125, i32 204, i32 103, i32 10, i32 270,
	i32 61, i32 328, i32 286, i32 67, i32 108, i32 270, i32 140, i32 31,
	i32 78, i32 125, i32 13, i32 224, i32 221, i32 290, i32 210, i32 133,
	i32 272, i32 273, i32 327, i32 282, i32 152, i32 160, i32 64, i32 317,
	i32 327, i32 75, i32 328, i32 18, i32 219, i32 44, i32 26, i32 196,
	i32 242, i32 1, i32 231, i32 60, i32 42, i32 315, i32 92, i32 130,
	i32 206, i32 176, i32 225, i32 148, i32 245, i32 241, i32 299, i32 23,
	i32 322, i32 55, i32 70, i32 210, i32 84, i32 284, i32 117, i32 312,
	i32 243, i32 13, i32 311, i32 299, i32 132, i32 182, i32 110, i32 56,
	i32 150, i32 75, i32 146, i32 63, i32 147, i32 266, i32 333, i32 166,
	i32 250, i32 123, i32 323, i32 226, i32 12, i32 239, i32 126, i32 153,
	i32 251, i32 171, i32 114, i32 167, i32 169, i32 258, i32 165, i32 241,
	i32 87, i32 258, i32 270, i32 116, i32 85, i32 310, i32 304, i32 198,
	i32 125, i32 6, i32 151, i32 307, i32 61, i32 194, i32 51, i32 104,
	i32 115, i32 40, i32 283, i32 281, i32 191, i32 121, i32 318, i32 174,
	i32 132, i32 11, i32 52, i32 21, i32 44, i32 76, i32 120, i32 250,
	i32 231, i32 192, i32 237, i32 232, i32 94, i32 301, i32 82, i32 137,
	i32 277, i32 22, i32 217, i32 8, i32 51, i32 318, i32 290, i32 74,
	i32 298, i32 156, i32 292, i32 230, i32 155, i32 164, i32 93, i32 287,
	i32 45, i32 313, i32 301, i32 110, i32 131, i32 130, i32 25, i32 207,
	i32 162, i32 73, i32 56, i32 46, i32 180, i32 98, i32 197, i32 90,
	i32 232, i32 180, i32 22, i32 247, i32 146, i32 87, i32 43, i32 161,
	i32 72, i32 263, i32 234, i32 297, i32 3, i32 42, i32 64, i32 56,
	i32 285, i32 16, i32 58, i32 53, i32 151, i32 41, i32 325, i32 286,
	i32 14, i32 254, i32 237, i32 106, i32 244, i32 205, i32 167, i32 284,
	i32 243, i32 34, i32 159, i32 292, i32 86, i32 32, i32 235, i32 12,
	i32 329, i32 142, i32 51, i32 303, i32 193, i32 57, i32 267, i32 36,
	i32 188, i32 300, i32 285, i32 215, i32 35, i32 241, i32 59, i32 97,
	i32 253, i32 12, i32 99, i32 198, i32 248, i32 174, i32 17, i32 288,
	i32 165, i32 185, i32 93, i32 137, i32 209, i32 251, i32 196, i32 324,
	i32 124, i32 17, i32 79, i32 83, i32 280, i32 65, i32 86, i32 155,
	i32 154, i32 189, i32 276, i32 261, i32 304, i32 141, i32 101, i32 317,
	i32 217, i32 29, i32 52, i32 221, i32 148, i32 178, i32 315, i32 307,
	i32 281, i32 222, i32 5, i32 204, i32 296, i32 271, i32 293, i32 88,
	i32 275, i32 115, i32 223, i32 292, i32 214, i32 234, i32 264, i32 86,
	i32 281, i32 280, i32 62, i32 113, i32 308, i32 298, i32 58, i32 267,
	i32 100, i32 173, i32 50, i32 19, i32 227, i32 112, i32 102, i32 32,
	i32 3, i32 103, i32 84, i32 105, i32 284, i32 244, i32 72, i32 4,
	i32 254, i32 38, i32 32, i32 190, i32 57, i32 104, i32 74, i32 9,
	i32 124, i32 46, i32 216, i32 198, i32 9, i32 43, i32 332, i32 4,
	i32 268, i32 307, i32 35, i32 302, i32 193, i32 31, i32 219, i32 139,
	i32 93, i32 180, i32 94, i32 322, i32 305, i32 49, i32 142, i32 113,
	i32 296, i32 141, i32 2, i32 323, i32 233, i32 16, i32 175, i32 330,
	i32 116, i32 285, i32 158, i32 77, i32 80, i32 39, i32 257, i32 37,
	i32 279, i32 218, i32 186, i32 237, i32 230, i32 65, i32 139, i32 15,
	i32 46, i32 157, i32 166, i32 179, i32 117, i32 294, i32 332, i32 273,
	i32 282, i32 225, i32 48, i32 71, i32 81, i32 127, i32 95, i32 122,
	i32 289, i32 150, i32 26, i32 118, i32 247, i32 98, i32 28, i32 220,
	i32 103, i32 320, i32 150, i32 54, i32 170, i32 4, i32 99, i32 178,
	i32 38, i32 330, i32 33, i32 78, i32 94, i32 272, i32 194, i32 106,
	i32 21, i32 41, i32 215, i32 171, i32 104, i32 239, i32 149, i32 305,
	i32 189, i32 257, i32 315, i32 288, i32 282, i32 293, i32 262, i32 2,
	i32 309, i32 135, i32 112, i32 277, i32 195, i32 326, i32 207, i32 59,
	i32 96, i32 225, i32 39, i32 218, i32 329, i32 25, i32 95, i32 90,
	i32 100, i32 10, i32 216, i32 172, i32 88, i32 49, i32 63, i32 77,
	i32 101, i32 312, i32 269, i32 182, i32 47, i32 289, i32 209, i32 185,
	i32 7, i32 308, i32 82, i32 253, i32 297, i32 213, i32 206, i32 306,
	i32 311, i32 89, i32 184, i32 246, i32 191, i32 155, i32 333, i32 240,
	i32 33, i32 192, i32 113, i32 117, i32 66, i32 83, i32 136, i32 20,
	i32 11, i32 163, i32 134, i32 313, i32 3, i32 28, i32 313, i32 314,
	i32 283, i32 202, i32 112, i32 320, i32 100, i32 27, i32 15, i32 197,
	i32 7, i32 195, i32 85, i32 59, i32 72, i32 30, i32 294, i32 65,
	i32 276, i32 144, i32 81, i32 258, i32 321, i32 158, i32 41, i32 255,
	i32 200, i32 118, i32 183, i32 208, i32 305, i32 311, i32 265, i32 316,
	i32 168, i32 324, i32 250, i32 132, i32 76, i32 67, i32 173, i32 212,
	i32 144, i32 233, i32 107, i32 152, i32 304, i32 20, i32 71, i32 245,
	i32 157, i32 325, i32 182, i32 145, i32 122, i32 260, i32 297, i32 128,
	i32 193, i32 176, i32 153, i32 236, i32 154, i32 89, i32 176, i32 142,
	i32 316, i32 223, i32 96, i32 239, i32 20, i32 14, i32 199, i32 271,
	i32 136, i32 76, i32 60, i32 226, i32 168, i32 247, i32 169, i32 200,
	i32 15, i32 75, i32 138, i32 249, i32 6, i32 310, i32 211, i32 23,
	i32 249, i32 267, i32 322, i32 206, i32 201, i32 175, i32 92, i32 1,
	i32 137, i32 252, i32 251, i32 275, i32 135, i32 70, i32 177, i32 147,
	i32 189, i32 114, i32 294, i32 25, i32 240, i32 196, i32 89, i32 97,
	i32 230, i32 235, i32 262, i32 31, i32 45, i32 144, i32 245, i32 256,
	i32 208, i32 110, i32 159, i32 331, i32 35, i32 293, i32 108, i32 22,
	i32 115, i32 179, i32 58, i32 139, i32 273, i32 289, i32 145, i32 119,
	i32 121, i32 228, i32 111, i32 303, i32 210, i32 140, i32 175, i32 216,
	i32 55, i32 80, i32 106, i32 201, i32 8, i32 202, i32 121, i32 134,
	i32 254, i32 287, i32 280, i32 152, i32 278, i32 266, i32 244, i32 9,
	i32 207, i32 48, i32 240, i32 0, i32 68, i32 204, i32 326, i32 160,
	i32 303, i32 261, i32 227, i32 5, i32 164, i32 127, i32 133, i32 266,
	i32 162, i32 316, i32 181, i32 255, i32 141, i32 278, i32 42, i32 274,
	i32 302, i32 170, i32 203, i32 211, i32 177, i32 283, i32 40, i32 296,
	i32 321, i32 238, i32 82, i32 178, i32 57, i32 37, i32 128, i32 98,
	i32 167, i32 173, i32 192, i32 295, i32 279, i32 83, i32 213, i32 197,
	i32 99, i32 26, i32 30, i32 160, i32 268, i32 18, i32 181, i32 128,
	i32 120, i32 234, i32 156, i32 252, i32 269, i32 299, i32 208, i32 70,
	i32 248, i32 271, i32 166, i32 242, i32 333, i32 105, i32 190, i32 268,
	i32 259, i32 170, i32 171, i32 16, i32 279, i32 275, i32 145, i32 309,
	i32 40, i32 126, i32 119, i32 38, i32 116, i32 47, i32 143, i32 85,
	i32 118, i32 34, i32 174, i32 96, i32 53, i32 222, i32 95, i32 259,
	i32 184, i32 260, i32 129, i32 102, i32 130, i32 154, i32 24, i32 162,
	i32 233, i32 149, i32 205, i32 105, i32 243, i32 90, i32 226, i32 220,
	i32 61, i32 143, i32 91, i32 101, i32 5, i32 13, i32 122, i32 123,
	i32 120, i32 136, i32 28, i32 183, i32 73, i32 231, i32 24, i32 24,
	i32 218, i32 264, i32 261, i32 274, i32 229, i32 18, i32 138, i32 211,
	i32 228, i32 169, i32 33, i32 265, i32 102, i32 124, i32 232, i32 190,
	i32 92, i32 184, i32 187, i32 164, i32 168, i32 235, i32 39, i32 236,
	i32 29, i32 308, i32 177, i32 17, i32 172, i32 321, i32 272, i32 138,
	i32 151, i32 224, i32 331, i32 199, i32 291, i32 156, i32 131, i32 19,
	i32 66, i32 287, i32 327, i32 165, i32 109, i32 148, i32 1, i32 217,
	i32 238, i32 47, i32 161, i32 332, i32 320, i32 301, i32 209, i32 80,
	i32 62, i32 300, i32 107, i32 263, i32 140, i32 213, i32 265, i32 49,
	i32 246, i32 295, i32 260, i32 14, i32 318, i32 302, i32 183, i32 69,
	i32 306, i32 214, i32 172, i32 219, i32 224, i32 314, i32 153, i32 330,
	i32 79, i32 229, i32 109, i32 212, i32 186, i32 259, i32 68, i32 181,
	i32 64, i32 133, i32 27, i32 161, i32 34, i32 185, i32 252, i32 263,
	i32 0, i32 147, i32 309, i32 159, i32 221, i32 45, i32 278, i32 10,
	i32 194, i32 111, i32 290, i32 11, i32 54, i32 53, i32 79, i32 119,
	i32 127, i32 84, i32 188, i32 67, i32 108, i32 220, i32 66, i32 223,
	i32 129, i32 123, i32 78, i32 274, i32 331, i32 264, i32 329, i32 8,
	i32 228, i32 2, i32 222, i32 60, i32 325, i32 44, i32 277, i32 143,
	i32 157, i32 129, i32 262, i32 203, i32 55, i32 195, i32 23, i32 107,
	i32 134, i32 69, i32 215, i32 248, i32 186, i32 71, i32 324, i32 227,
	i32 306, i32 36, i32 29, i32 37, i32 214, i32 54, i32 63, i32 135,
	i32 52, i32 246, i32 201, i32 295, i32 300, i32 91, i32 0, i32 88,
	i32 310, i32 199, i32 149, i32 312, i32 288, i32 276, i32 253, i32 203,
	i32 126, i32 36, i32 87, i32 236, i32 19, i32 319, i32 319, i32 74,
	i32 317, i32 314, i32 187, i32 187, i32 50, i32 6, i32 91, i32 21,
	i32 163, i32 97, i32 50, i32 323, i32 114, i32 256, i32 131, i32 179,
	i32 77, i32 62, i32 212, i32 328, i32 27, i32 43, i32 291, i32 319,
	i32 229, i32 255, i32 7, i32 269, i32 200, i32 111, i32 158, i32 256,
	i32 191, i32 238
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 4

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 4

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 u0x0000000000000000, ; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 4

; Functions

; Function attributes: memory(write, argmem: none, inaccessiblemem: none) "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 4, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 1

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { memory(write, argmem: none, inaccessiblemem: none) "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }

; Metadata
!llvm.module.flags = !{!0, !1, !7}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!".NET for Android remotes/origin/release/9.0.1xx @ 278e101698269c9bc8840aa94d72e7f24066a96d"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"min_enum_size", i32 4}
