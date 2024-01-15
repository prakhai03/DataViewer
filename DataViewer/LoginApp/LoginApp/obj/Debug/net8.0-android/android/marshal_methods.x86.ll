; ModuleID = 'marshal_methods.x86.ll'
source_filename = "marshal_methods.x86.ll"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i686-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [332 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [652 x i32] [
	i32 2616222, ; 0: System.Net.NetworkInformation.dll => 0x27eb9e => 69
	i32 10166715, ; 1: System.Net.NameResolution.dll => 0x9b21bb => 68
	i32 15721112, ; 2: System.Runtime.Intrinsics.dll => 0xefe298 => 109
	i32 32687329, ; 3: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 249
	i32 34715100, ; 4: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 283
	i32 34839235, ; 5: System.IO.FileSystem.DriveInfo => 0x2139ac3 => 49
	i32 38948123, ; 6: ar\Microsoft.Maui.Controls.resources.dll => 0x2524d1b => 291
	i32 39485524, ; 7: System.Net.WebSockets.dll => 0x25a8054 => 81
	i32 42244203, ; 8: he\Microsoft.Maui.Controls.resources.dll => 0x284986b => 300
	i32 42639949, ; 9: System.Threading.Thread => 0x28aa24d => 146
	i32 66541672, ; 10: System.Diagnostics.StackTrace => 0x3f75868 => 31
	i32 67008169, ; 11: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 324
	i32 68219467, ; 12: System.Security.Cryptography.Primitives => 0x410f24b => 125
	i32 72070932, ; 13: Microsoft.Maui.Graphics.dll => 0x44bb714 => 205
	i32 82292897, ; 14: System.Runtime.CompilerServices.VisualC.dll => 0x4e7b0a1 => 103
	i32 83839681, ; 15: ms\Microsoft.Maui.Controls.resources.dll => 0x4ff4ac1 => 308
	i32 101534019, ; 16: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 267
	i32 117431740, ; 17: System.Runtime.InteropServices => 0x6ffddbc => 108
	i32 120558881, ; 18: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 267
	i32 122350210, ; 19: System.Threading.Channels.dll => 0x74aea82 => 140
	i32 124202100, ; 20: DevExpress.Maui.CollectionView.dll => 0x7672c74 => 180
	i32 134690465, ; 21: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x80736a1 => 287
	i32 136584136, ; 22: zh-Hans\Microsoft.Maui.Controls.resources.dll => 0x8241bc8 => 323
	i32 140062828, ; 23: sk\Microsoft.Maui.Controls.resources.dll => 0x859306c => 316
	i32 142721839, ; 24: System.Net.WebHeaderCollection => 0x881c32f => 78
	i32 149972175, ; 25: System.Security.Cryptography.Primitives.dll => 0x8f064cf => 125
	i32 159306688, ; 26: System.ComponentModel.Annotations => 0x97ed3c0 => 14
	i32 165246403, ; 27: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 223
	i32 176265551, ; 28: System.ServiceProcess => 0xa81994f => 133
	i32 182336117, ; 29: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 269
	i32 184328833, ; 30: System.ValueTuple.dll => 0xafca281 => 152
	i32 205061960, ; 31: System.ComponentModel => 0xc38ff48 => 19
	i32 209399409, ; 32: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 221
	i32 212673184, ; 33: DevExpress.Maui.Controls => 0xcad22a0 => 183
	i32 220171995, ; 34: System.Diagnostics.Debug => 0xd1f8edb => 27
	i32 230216969, ; 35: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 243
	i32 230752869, ; 36: Microsoft.CSharp.dll => 0xdc10265 => 2
	i32 231409092, ; 37: System.Linq.Parallel => 0xdcb05c4 => 60
	i32 231814094, ; 38: System.Globalization => 0xdd133ce => 43
	i32 246610117, ; 39: System.Reflection.Emit.Lightweight => 0xeb2f8c5 => 92
	i32 261689757, ; 40: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 226
	i32 276479776, ; 41: System.Threading.Timer.dll => 0x107abf20 => 148
	i32 278686392, ; 42: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 245
	i32 280482487, ; 43: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 242
	i32 291076382, ; 44: System.IO.Pipes.AccessControl.dll => 0x1159791e => 55
	i32 298918909, ; 45: System.Net.Ping.dll => 0x11d123fd => 70
	i32 317674968, ; 46: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 321
	i32 318968648, ; 47: Xamarin.AndroidX.Activity.dll => 0x13031348 => 211
	i32 321597661, ; 48: System.Numerics => 0x132b30dd => 84
	i32 321963286, ; 49: fr\Microsoft.Maui.Controls.resources.dll => 0x1330c516 => 299
	i32 342366114, ; 50: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 244
	i32 346964213, ; 51: DXScheduler.a.dll => 0x14ae40f5 => 189
	i32 360082299, ; 52: System.ServiceModel.Web => 0x15766b7b => 132
	i32 364319144, ; 53: DXCollectionView.a => 0x15b711a8 => 179
	i32 367780167, ; 54: System.IO.Pipes => 0x15ebe147 => 56
	i32 374914964, ; 55: System.Transactions.Local => 0x1658bf94 => 150
	i32 375677976, ; 56: System.Net.ServicePoint.dll => 0x16646418 => 75
	i32 379916513, ; 57: System.Threading.Thread.dll => 0x16a510e1 => 146
	i32 385762202, ; 58: System.Memory.dll => 0x16fe439a => 63
	i32 392610295, ; 59: System.Threading.ThreadPool.dll => 0x1766c1f7 => 147
	i32 395744057, ; 60: _Microsoft.Android.Resource.Designer => 0x17969339 => 325
	i32 403441872, ; 61: WindowsBase => 0x180c08d0 => 166
	i32 409257351, ; 62: tr\Microsoft.Maui.Controls.resources.dll => 0x1864c587 => 319
	i32 441335492, ; 63: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 227
	i32 442565967, ; 64: System.Collections => 0x1a61054f => 13
	i32 450948140, ; 65: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 240
	i32 451504562, ; 66: System.Security.Cryptography.X509Certificates => 0x1ae969b2 => 126
	i32 456227837, ; 67: System.Web.HttpUtility.dll => 0x1b317bfd => 153
	i32 459347974, ; 68: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 114
	i32 465846621, ; 69: mscorlib => 0x1bc4415d => 167
	i32 467557752, ; 70: DevExpress.Maui.Scheduler.dll => 0x1bde5d78 => 190
	i32 469710990, ; 71: System.dll => 0x1bff388e => 165
	i32 476646585, ; 72: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 242
	i32 486930444, ; 73: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 255
	i32 489220957, ; 74: es\Microsoft.Maui.Controls.resources.dll => 0x1d28eb5d => 297
	i32 498788369, ; 75: System.ObjectModel => 0x1dbae811 => 85
	i32 513247710, ; 76: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 199
	i32 526420162, ; 77: System.Transactions.dll => 0x1f6088c2 => 151
	i32 527452488, ; 78: Xamarin.Kotlin.StdLib.Jdk7 => 0x1f704948 => 287
	i32 530272170, ; 79: System.Linq.Queryable => 0x1f9b4faa => 61
	i32 538707440, ; 80: th\Microsoft.Maui.Controls.resources.dll => 0x201c05f0 => 318
	i32 539058512, ; 81: Microsoft.Extensions.Logging => 0x20216150 => 196
	i32 540030774, ; 82: System.IO.FileSystem.dll => 0x20303736 => 52
	i32 545304856, ; 83: System.Runtime.Extensions => 0x2080b118 => 104
	i32 546455878, ; 84: System.Runtime.Serialization.Xml => 0x20924146 => 115
	i32 549171840, ; 85: System.Globalization.Calendars => 0x20bbb280 => 41
	i32 557405415, ; 86: Jsr305Binding => 0x213954e7 => 280
	i32 569601784, ; 87: Xamarin.AndroidX.Window.Extensions.Core.Core => 0x21f36ef8 => 278
	i32 577335427, ; 88: System.Security.Cryptography.Cng => 0x22697083 => 121
	i32 597488923, ; 89: CommunityToolkit.Maui => 0x239cf51b => 174
	i32 601371474, ; 90: System.IO.IsolatedStorage.dll => 0x23d83352 => 53
	i32 605376203, ; 91: System.IO.Compression.FileSystem => 0x24154ecb => 45
	i32 613668793, ; 92: System.Security.Cryptography.Algorithms => 0x2493d7b9 => 120
	i32 627609679, ; 93: Xamarin.AndroidX.CustomView => 0x2568904f => 232
	i32 627931235, ; 94: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 310
	i32 639843206, ; 95: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x26233b86 => 238
	i32 643868501, ; 96: System.Net => 0x2660a755 => 82
	i32 662205335, ; 97: System.Text.Encodings.Web.dll => 0x27787397 => 137
	i32 663517072, ; 98: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 274
	i32 666292255, ; 99: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 218
	i32 672442732, ; 100: System.Collections.Concurrent => 0x2814a96c => 9
	i32 683518922, ; 101: System.Net.Security => 0x28bdabca => 74
	i32 690569205, ; 102: System.Xml.Linq.dll => 0x29293ff5 => 156
	i32 691348768, ; 103: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 289
	i32 693804605, ; 104: System.Windows => 0x295a9e3d => 155
	i32 699345723, ; 105: System.Reflection.Emit => 0x29af2b3b => 93
	i32 700284507, ; 106: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 284
	i32 700358131, ; 107: System.IO.Compression.ZipFile => 0x29be9df3 => 46
	i32 720511267, ; 108: Xamarin.Kotlin.StdLib.Jdk8 => 0x2af22123 => 288
	i32 722857257, ; 109: System.Runtime.Loader.dll => 0x2b15ed29 => 110
	i32 735137430, ; 110: System.Security.SecureString.dll => 0x2bd14e96 => 130
	i32 752232764, ; 111: System.Diagnostics.Contracts.dll => 0x2cd6293c => 26
	i32 755313932, ; 112: Xamarin.Android.Glide.Annotations.dll => 0x2d052d0c => 208
	i32 759454413, ; 113: System.Net.Requests => 0x2d445acd => 73
	i32 762598435, ; 114: System.IO.Pipes.dll => 0x2d745423 => 56
	i32 775507847, ; 115: System.IO.Compression => 0x2e394f87 => 47
	i32 777317022, ; 116: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 316
	i32 789151979, ; 117: Microsoft.Extensions.Options => 0x2f0980eb => 198
	i32 790371945, ; 118: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0x2f1c1e69 => 233
	i32 804715423, ; 119: System.Data.Common => 0x2ff6fb9f => 23
	i32 807930345, ; 120: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 0x302809e9 => 247
	i32 809851609, ; 121: System.Drawing.Common.dll => 0x30455ad9 => 206
	i32 823281589, ; 122: System.Private.Uri.dll => 0x311247b5 => 87
	i32 830298997, ; 123: System.IO.Compression.Brotli => 0x317d5b75 => 44
	i32 832635846, ; 124: System.Xml.XPath.dll => 0x31a103c6 => 161
	i32 834051424, ; 125: System.Net.Quic => 0x31b69d60 => 72
	i32 843511501, ; 126: Xamarin.AndroidX.Print => 0x3246f6cd => 260
	i32 869139383, ; 127: hi\Microsoft.Maui.Controls.resources.dll => 0x33ce03b7 => 301
	i32 873119928, ; 128: Microsoft.VisualBasic => 0x340ac0b8 => 4
	i32 877678880, ; 129: System.Globalization.dll => 0x34505120 => 43
	i32 878954865, ; 130: System.Net.Http.Json => 0x3463c971 => 64
	i32 880668424, ; 131: ru\Microsoft.Maui.Controls.resources.dll => 0x347def08 => 315
	i32 892358156, ; 132: LoginApp.resources => 0x35304e0c => 0
	i32 904024072, ; 133: System.ComponentModel.Primitives.dll => 0x35e25008 => 17
	i32 911108515, ; 134: System.IO.MemoryMappedFiles.dll => 0x364e69a3 => 54
	i32 918734561, ; 135: pt-BR\Microsoft.Maui.Controls.resources.dll => 0x36c2c6e1 => 312
	i32 928116545, ; 136: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 283
	i32 952186615, ; 137: System.Runtime.InteropServices.JavaScript.dll => 0x38c136f7 => 106
	i32 956575887, ; 138: Xamarin.Kotlin.StdLib.Jdk8.dll => 0x3904308f => 288
	i32 961460050, ; 139: it\Microsoft.Maui.Controls.resources.dll => 0x394eb752 => 305
	i32 966729478, ; 140: Xamarin.Google.Crypto.Tink.Android => 0x399f1f06 => 281
	i32 967690846, ; 141: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 244
	i32 975236339, ; 142: System.Diagnostics.Tracing => 0x3a20ecf3 => 35
	i32 975874589, ; 143: System.Xml.XDocument => 0x3a2aaa1d => 159
	i32 986514023, ; 144: System.Private.DataContractSerialization.dll => 0x3acd0267 => 86
	i32 987214855, ; 145: System.Diagnostics.Tools => 0x3ad7b407 => 33
	i32 990727110, ; 146: ro\Microsoft.Maui.Controls.resources.dll => 0x3b0d4bc6 => 314
	i32 992768348, ; 147: System.Collections.dll => 0x3b2c715c => 13
	i32 994442037, ; 148: System.IO.FileSystem => 0x3b45fb35 => 52
	i32 1001831731, ; 149: System.IO.UnmanagedMemoryStream.dll => 0x3bb6bd33 => 57
	i32 1004437970, ; 150: DevExpress.Maui.DataGrid.dll => 0x3bde81d2 => 187
	i32 1012816738, ; 151: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 264
	i32 1019214401, ; 152: System.Drawing => 0x3cbffa41 => 37
	i32 1028951442, ; 153: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 195
	i32 1031528504, ; 154: Xamarin.Google.ErrorProne.Annotations.dll => 0x3d7be038 => 282
	i32 1035644815, ; 155: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 216
	i32 1036536393, ; 156: System.Drawing.Primitives.dll => 0x3dc84a49 => 36
	i32 1043950537, ; 157: de\Microsoft.Maui.Controls.resources.dll => 0x3e396bc9 => 295
	i32 1044663988, ; 158: System.Linq.Expressions.dll => 0x3e444eb4 => 59
	i32 1052210849, ; 159: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 251
	i32 1067306892, ; 160: GoogleGson => 0x3f9dcf8c => 191
	i32 1082857460, ; 161: System.ComponentModel.TypeConverter => 0x408b17f4 => 18
	i32 1084122840, ; 162: Xamarin.Kotlin.StdLib => 0x409e66d8 => 285
	i32 1098259244, ; 163: System => 0x41761b2c => 165
	i32 1108272742, ; 164: sv\Microsoft.Maui.Controls.resources.dll => 0x420ee666 => 317
	i32 1117529484, ; 165: pl\Microsoft.Maui.Controls.resources.dll => 0x429c258c => 311
	i32 1118262833, ; 166: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 307
	i32 1121599056, ; 167: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 0x42da3e50 => 250
	i32 1149092582, ; 168: Xamarin.AndroidX.Window => 0x447dc2e6 => 277
	i32 1168523401, ; 169: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 313
	i32 1170634674, ; 170: System.Web.dll => 0x45c677b2 => 154
	i32 1175144683, ; 171: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 273
	i32 1178241025, ; 172: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 258
	i32 1204270330, ; 173: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 218
	i32 1208641965, ; 174: System.Diagnostics.Process => 0x480a69ad => 30
	i32 1219128291, ; 175: System.IO.IsolatedStorage => 0x48aa6be3 => 53
	i32 1243150071, ; 176: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 0x4a18f6f7 => 278
	i32 1253011324, ; 177: Microsoft.Win32.Registry => 0x4aaf6f7c => 6
	i32 1260983243, ; 178: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 293
	i32 1264511973, ; 179: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 268
	i32 1267360935, ; 180: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 272
	i32 1273260888, ; 181: Xamarin.AndroidX.Collection.Ktx => 0x4be46b58 => 224
	i32 1275534314, ; 182: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 289
	i32 1278448581, ; 183: Xamarin.AndroidX.Annotation.Jvm => 0x4c3393c5 => 215
	i32 1293217323, ; 184: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 235
	i32 1308624726, ; 185: hr\Microsoft.Maui.Controls.resources.dll => 0x4e000756 => 302
	i32 1309188875, ; 186: System.Private.DataContractSerialization => 0x4e08a30b => 86
	i32 1322716291, ; 187: Xamarin.AndroidX.Window.dll => 0x4ed70c83 => 277
	i32 1324164729, ; 188: System.Linq => 0x4eed2679 => 62
	i32 1335329327, ; 189: System.Runtime.Serialization.Json.dll => 0x4f97822f => 113
	i32 1336711579, ; 190: zh-HK\Microsoft.Maui.Controls.resources.dll => 0x4fac999b => 322
	i32 1353618654, ; 191: DXEditors.a => 0x50ae94de => 181
	i32 1355559258, ; 192: DevExpress.Maui.Scheduler => 0x50cc315a => 190
	i32 1364015309, ; 193: System.IO => 0x514d38cd => 58
	i32 1373134921, ; 194: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 323
	i32 1376866003, ; 195: Xamarin.AndroidX.SavedState => 0x52114ed3 => 264
	i32 1379779777, ; 196: System.Resources.ResourceManager => 0x523dc4c1 => 100
	i32 1392504945, ; 197: LoginApp => 0x52fff071 => 1
	i32 1402170036, ; 198: System.Configuration.dll => 0x53936ab4 => 20
	i32 1406073936, ; 199: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 228
	i32 1408764838, ; 200: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 112
	i32 1411638395, ; 201: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 102
	i32 1422545099, ; 202: System.Runtime.CompilerServices.VisualC => 0x54ca50cb => 103
	i32 1430672901, ; 203: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 291
	i32 1434145427, ; 204: System.Runtime.Handles => 0x557b5293 => 105
	i32 1435222561, ; 205: Xamarin.Google.Crypto.Tink.Android.dll => 0x558bc221 => 281
	i32 1439761251, ; 206: System.Net.Quic.dll => 0x55d10363 => 72
	i32 1452070440, ; 207: System.Formats.Asn1.dll => 0x568cd628 => 39
	i32 1453312822, ; 208: System.Diagnostics.Tools.dll => 0x569fcb36 => 33
	i32 1457743152, ; 209: System.Runtime.Extensions.dll => 0x56e36530 => 104
	i32 1458022317, ; 210: System.Net.Security.dll => 0x56e7a7ad => 74
	i32 1461004990, ; 211: es\Microsoft.Maui.Controls.resources => 0x57152abe => 297
	i32 1461234159, ; 212: System.Collections.Immutable.dll => 0x5718a9ef => 10
	i32 1461719063, ; 213: System.Security.Cryptography.OpenSsl => 0x57201017 => 124
	i32 1462112819, ; 214: System.IO.Compression.dll => 0x57261233 => 47
	i32 1469204771, ; 215: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 217
	i32 1470490898, ; 216: Microsoft.Extensions.Primitives => 0x57a5e912 => 199
	i32 1479771757, ; 217: System.Collections.Immutable => 0x5833866d => 10
	i32 1480492111, ; 218: System.IO.Compression.Brotli.dll => 0x583e844f => 44
	i32 1487239319, ; 219: Microsoft.Win32.Primitives => 0x58a57897 => 5
	i32 1490025113, ; 220: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 0x58cffa99 => 265
	i32 1518395959, ; 221: LoginApp.dll => 0x5a80e237 => 1
	i32 1526286932, ; 222: vi\Microsoft.Maui.Controls.resources.dll => 0x5af94a54 => 321
	i32 1536373174, ; 223: System.Diagnostics.TextWriterTraceListener => 0x5b9331b6 => 32
	i32 1543031311, ; 224: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 139
	i32 1543355203, ; 225: System.Reflection.Emit.dll => 0x5bfdbb43 => 93
	i32 1550322496, ; 226: System.Reflection.Extensions.dll => 0x5c680b40 => 94
	i32 1565862583, ; 227: System.IO.FileSystem.Primitives => 0x5d552ab7 => 50
	i32 1566207040, ; 228: System.Threading.Tasks.Dataflow.dll => 0x5d5a6c40 => 142
	i32 1571983310, ; 229: DevExpress.Data.v23.2.dll => 0x5db28fce => 176
	i32 1573704789, ; 230: System.Runtime.Serialization.Json => 0x5dccd455 => 113
	i32 1580037396, ; 231: System.Threading.Overlapped => 0x5e2d7514 => 141
	i32 1582372066, ; 232: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 234
	i32 1592978981, ; 233: System.Runtime.Serialization.dll => 0x5ef2ee25 => 116
	i32 1597949149, ; 234: Xamarin.Google.ErrorProne.Annotations => 0x5f3ec4dd => 282
	i32 1601112923, ; 235: System.Xml.Serialization => 0x5f6f0b5b => 158
	i32 1602284021, ; 236: DevExpress.Maui.Core => 0x5f80e9f5 => 185
	i32 1604827217, ; 237: System.Net.WebClient => 0x5fa7b851 => 77
	i32 1615388022, ; 238: DevExpress.Maui.Core.dll => 0x6048dd76 => 185
	i32 1618516317, ; 239: System.Net.WebSockets.Client.dll => 0x6078995d => 80
	i32 1622152042, ; 240: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 254
	i32 1622358360, ; 241: System.Dynamic.Runtime => 0x60b33958 => 38
	i32 1624863272, ; 242: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 276
	i32 1634654947, ; 243: CommunityToolkit.Maui.Core.dll => 0x616edae3 => 175
	i32 1635184631, ; 244: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x6176eff7 => 238
	i32 1636350590, ; 245: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 231
	i32 1639515021, ; 246: System.Net.Http.dll => 0x61b9038d => 65
	i32 1639986890, ; 247: System.Text.RegularExpressions => 0x61c036ca => 139
	i32 1641389582, ; 248: System.ComponentModel.EventBasedAsync.dll => 0x61d59e0e => 16
	i32 1654786569, ; 249: DevExpress.Maui.DataGrid => 0x62a20a09 => 187
	i32 1657153582, ; 250: System.Runtime => 0x62c6282e => 117
	i32 1658241508, ; 251: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 270
	i32 1658251792, ; 252: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 279
	i32 1670060433, ; 253: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 226
	i32 1675553242, ; 254: System.IO.FileSystem.DriveInfo.dll => 0x63dee9da => 49
	i32 1677501392, ; 255: System.Net.Primitives.dll => 0x63fca3d0 => 71
	i32 1678508291, ; 256: System.Net.WebSockets => 0x640c0103 => 81
	i32 1679769178, ; 257: System.Security.Cryptography => 0x641f3e5a => 127
	i32 1691477237, ; 258: System.Reflection.Metadata => 0x64d1e4f5 => 95
	i32 1696967625, ; 259: System.Security.Cryptography.Csp => 0x6525abc9 => 122
	i32 1698840827, ; 260: Xamarin.Kotlin.StdLib.Common => 0x654240fb => 286
	i32 1701541528, ; 261: System.Diagnostics.Debug.dll => 0x656b7698 => 27
	i32 1720223769, ; 262: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 0x66888819 => 247
	i32 1726116996, ; 263: System.Reflection.dll => 0x66e27484 => 98
	i32 1728033016, ; 264: System.Diagnostics.FileVersionInfo.dll => 0x66ffb0f8 => 29
	i32 1729485958, ; 265: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 222
	i32 1743415430, ; 266: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 292
	i32 1744735666, ; 267: System.Transactions.Local.dll => 0x67fe8db2 => 150
	i32 1746316138, ; 268: Mono.Android.Export => 0x6816ab6a => 170
	i32 1750313021, ; 269: Microsoft.Win32.Primitives.dll => 0x6853a83d => 5
	i32 1758240030, ; 270: System.Resources.Reader.dll => 0x68cc9d1e => 99
	i32 1763938596, ; 271: System.Diagnostics.TraceSource.dll => 0x69239124 => 34
	i32 1765942094, ; 272: System.Reflection.Extensions => 0x6942234e => 94
	i32 1766324549, ; 273: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 269
	i32 1770582343, ; 274: Microsoft.Extensions.Logging.dll => 0x6988f147 => 196
	i32 1776026572, ; 275: System.Core.dll => 0x69dc03cc => 22
	i32 1777075843, ; 276: System.Globalization.Extensions.dll => 0x69ec0683 => 42
	i32 1780572499, ; 277: Mono.Android.Runtime.dll => 0x6a216153 => 171
	i32 1782862114, ; 278: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 308
	i32 1788241197, ; 279: Xamarin.AndroidX.Fragment => 0x6a96652d => 240
	i32 1793755602, ; 280: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 300
	i32 1808609942, ; 281: Xamarin.AndroidX.Loader => 0x6bcd3296 => 254
	i32 1813058853, ; 282: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 285
	i32 1813201214, ; 283: Xamarin.Google.Android.Material => 0x6c13413e => 279
	i32 1815999139, ; 284: Xamarin.AndroidX.AutoFill => 0x6c3df2a3 => 220
	i32 1818569960, ; 285: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 259
	i32 1818787751, ; 286: Microsoft.VisualBasic.Core => 0x6c687fa7 => 3
	i32 1824175904, ; 287: System.Text.Encoding.Extensions => 0x6cbab720 => 135
	i32 1824722060, ; 288: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 112
	i32 1828688058, ; 289: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 197
	i32 1847515442, ; 290: Xamarin.Android.Glide.Annotations => 0x6e1ed932 => 208
	i32 1853025655, ; 291: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 317
	i32 1858542181, ; 292: System.Linq.Expressions => 0x6ec71a65 => 59
	i32 1870277092, ; 293: System.Reflection.Primitives => 0x6f7a29e4 => 96
	i32 1875935024, ; 294: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 299
	i32 1879696579, ; 295: System.Formats.Tar.dll => 0x7009e4c3 => 40
	i32 1885316902, ; 296: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 219
	i32 1888955245, ; 297: System.Diagnostics.Contracts => 0x70972b6d => 26
	i32 1889954781, ; 298: System.Reflection.Metadata.dll => 0x70a66bdd => 95
	i32 1893218855, ; 299: cs\Microsoft.Maui.Controls.resources.dll => 0x70d83a27 => 293
	i32 1898237753, ; 300: System.Reflection.DispatchProxy => 0x7124cf39 => 90
	i32 1900610850, ; 301: System.Resources.ResourceManager.dll => 0x71490522 => 100
	i32 1910275211, ; 302: System.Collections.NonGeneric.dll => 0x71dc7c8b => 11
	i32 1939592360, ; 303: System.Private.Xml.Linq => 0x739bd4a8 => 88
	i32 1953182387, ; 304: id\Microsoft.Maui.Controls.resources.dll => 0x746b32b3 => 304
	i32 1956758971, ; 305: System.Resources.Writer => 0x74a1c5bb => 101
	i32 1961813231, ; 306: Xamarin.AndroidX.Security.SecurityCrypto.dll => 0x74eee4ef => 266
	i32 1968388702, ; 307: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 192
	i32 1983156543, ; 308: Xamarin.Kotlin.StdLib.Common.dll => 0x7634913f => 286
	i32 1985761444, ; 309: Xamarin.Android.Glide.GifDecoder => 0x765c50a4 => 210
	i32 2003115576, ; 310: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 296
	i32 2011961780, ; 311: System.Buffers.dll => 0x77ec19b4 => 8
	i32 2019465201, ; 312: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 251
	i32 2031763787, ; 313: Xamarin.Android.Glide => 0x791a414b => 207
	i32 2045470958, ; 314: System.Private.Xml => 0x79eb68ee => 89
	i32 2055257422, ; 315: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 246
	i32 2060060697, ; 316: System.Windows.dll => 0x7aca0819 => 155
	i32 2066184531, ; 317: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 295
	i32 2070888862, ; 318: System.Diagnostics.TraceSource => 0x7b6f419e => 34
	i32 2079903147, ; 319: System.Runtime.dll => 0x7bf8cdab => 117
	i32 2090596640, ; 320: System.Numerics.Vectors => 0x7c9bf920 => 83
	i32 2127167465, ; 321: System.Console => 0x7ec9ffe9 => 21
	i32 2142473426, ; 322: System.Collections.Specialized => 0x7fb38cd2 => 12
	i32 2143790110, ; 323: System.Xml.XmlSerializer.dll => 0x7fc7a41e => 163
	i32 2146852085, ; 324: Microsoft.VisualBasic.dll => 0x7ff65cf5 => 4
	i32 2159891885, ; 325: Microsoft.Maui => 0x80bd55ad => 203
	i32 2169148018, ; 326: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 303
	i32 2181898931, ; 327: Microsoft.Extensions.Options.dll => 0x820d22b3 => 198
	i32 2192057212, ; 328: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 197
	i32 2193016926, ; 329: System.ObjectModel.dll => 0x82b6c85e => 85
	i32 2201107256, ; 330: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 290
	i32 2201231467, ; 331: System.Net.Http => 0x8334206b => 65
	i32 2207618523, ; 332: it\Microsoft.Maui.Controls.resources => 0x839595db => 305
	i32 2209434506, ; 333: DXNavigation.a => 0x83b14b8a => 182
	i32 2217644978, ; 334: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 273
	i32 2222056684, ; 335: System.Threading.Tasks.Parallel => 0x8471e4ec => 144
	i32 2234734091, ; 336: Xamarin.AndroidX.AutoFill.dll => 0x8533560b => 220
	i32 2237934468, ; 337: DevExpress.Maui.Editors.dll => 0x85642b84 => 188
	i32 2244775296, ; 338: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 255
	i32 2252106437, ; 339: System.Xml.Serialization.dll => 0x863c6ac5 => 158
	i32 2256313426, ; 340: System.Globalization.Extensions => 0x867c9c52 => 42
	i32 2265110946, ; 341: System.Security.AccessControl.dll => 0x8702d9a2 => 118
	i32 2266799131, ; 342: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 193
	i32 2267999099, ; 343: Xamarin.Android.Glide.DiskLruCache.dll => 0x872eeb7b => 209
	i32 2279755925, ; 344: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 262
	i32 2293034957, ; 345: System.ServiceModel.Web.dll => 0x88acefcd => 132
	i32 2295906218, ; 346: System.Net.Sockets => 0x88d8bfaa => 76
	i32 2298471582, ; 347: System.Net.Mail => 0x88ffe49e => 67
	i32 2303942373, ; 348: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 309
	i32 2305521784, ; 349: System.Private.CoreLib.dll => 0x896b7878 => 173
	i32 2315684594, ; 350: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 213
	i32 2320631194, ; 351: System.Threading.Tasks.Parallel.dll => 0x8a52059a => 144
	i32 2340441535, ; 352: System.Runtime.InteropServices.RuntimeInformation.dll => 0x8b804dbf => 107
	i32 2344264397, ; 353: System.ValueTuple => 0x8bbaa2cd => 152
	i32 2353062107, ; 354: System.Net.Primitives => 0x8c40e0db => 71
	i32 2366048013, ; 355: hu\Microsoft.Maui.Controls.resources.dll => 0x8d07070d => 303
	i32 2368005991, ; 356: System.Xml.ReaderWriter.dll => 0x8d24e767 => 157
	i32 2371007202, ; 357: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 192
	i32 2378619854, ; 358: System.Security.Cryptography.Csp.dll => 0x8dc6dbce => 122
	i32 2383496789, ; 359: System.Security.Principal.Windows.dll => 0x8e114655 => 128
	i32 2395872292, ; 360: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 304
	i32 2401565422, ; 361: System.Web.HttpUtility => 0x8f24faee => 153
	i32 2403452196, ; 362: Xamarin.AndroidX.Emoji2.dll => 0x8f41c524 => 237
	i32 2421380589, ; 363: System.Threading.Tasks.Dataflow => 0x905355ed => 142
	i32 2423080555, ; 364: Xamarin.AndroidX.Collection.Ktx.dll => 0x906d466b => 224
	i32 2427813419, ; 365: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 301
	i32 2435356389, ; 366: System.Console.dll => 0x912896e5 => 21
	i32 2435904999, ; 367: System.ComponentModel.DataAnnotations.dll => 0x9130f5e7 => 15
	i32 2454642406, ; 368: System.Text.Encoding.dll => 0x924edee6 => 136
	i32 2458678730, ; 369: System.Net.Sockets.dll => 0x928c75ca => 76
	i32 2459001652, ; 370: System.Linq.Parallel.dll => 0x92916334 => 60
	i32 2465532216, ; 371: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 227
	i32 2471841756, ; 372: netstandard.dll => 0x93554fdc => 168
	i32 2475788418, ; 373: Java.Interop.dll => 0x93918882 => 169
	i32 2480646305, ; 374: Microsoft.Maui.Controls => 0x93dba8a1 => 201
	i32 2483903535, ; 375: System.ComponentModel.EventBasedAsync => 0x940d5c2f => 16
	i32 2484371297, ; 376: System.Net.ServicePoint => 0x94147f61 => 75
	i32 2490993605, ; 377: System.AppContext.dll => 0x94798bc5 => 7
	i32 2501346920, ; 378: System.Data.DataSetExtensions => 0x95178668 => 24
	i32 2503351294, ; 379: ko\Microsoft.Maui.Controls.resources.dll => 0x95361bfe => 307
	i32 2505896520, ; 380: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 249
	i32 2522472828, ; 381: Xamarin.Android.Glide.dll => 0x9659e17c => 207
	i32 2538310050, ; 382: System.Reflection.Emit.Lightweight.dll => 0x974b89a2 => 92
	i32 2550873716, ; 383: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 302
	i32 2562349572, ; 384: Microsoft.CSharp => 0x98ba5a04 => 2
	i32 2569134695, ; 385: DevExpress.Maui.Charts.dll => 0x9921e267 => 178
	i32 2570120770, ; 386: System.Text.Encodings.Web => 0x9930ee42 => 137
	i32 2576534780, ; 387: ja\Microsoft.Maui.Controls.resources.dll => 0x9992ccfc => 306
	i32 2581783588, ; 388: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 0x99e2e424 => 250
	i32 2581819634, ; 389: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 272
	i32 2585220780, ; 390: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 135
	i32 2585805581, ; 391: System.Net.Ping => 0x9a20430d => 70
	i32 2589602615, ; 392: System.Threading.ThreadPool => 0x9a5a3337 => 147
	i32 2593496499, ; 393: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 311
	i32 2605712449, ; 394: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 290
	i32 2615233544, ; 395: Xamarin.AndroidX.Fragment.Ktx => 0x9be14c08 => 241
	i32 2617129537, ; 396: System.Private.Xml.dll => 0x9bfe3a41 => 89
	i32 2618712057, ; 397: System.Reflection.TypeExtensions.dll => 0x9c165ff9 => 97
	i32 2620871830, ; 398: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 231
	i32 2624644809, ; 399: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 236
	i32 2626831493, ; 400: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 306
	i32 2627185994, ; 401: System.Diagnostics.TextWriterTraceListener.dll => 0x9c97ad4a => 32
	i32 2629843544, ; 402: System.IO.Compression.ZipFile.dll => 0x9cc03a58 => 46
	i32 2633051222, ; 403: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 245
	i32 2663391936, ; 404: Xamarin.Android.Glide.DiskLruCache => 0x9ec022c0 => 209
	i32 2663698177, ; 405: System.Runtime.Loader => 0x9ec4cf01 => 110
	i32 2664396074, ; 406: System.Xml.XDocument.dll => 0x9ecf752a => 159
	i32 2665622720, ; 407: System.Drawing.Primitives => 0x9ee22cc0 => 36
	i32 2669833176, ; 408: DXCharts.a.dll => 0x9f226bd8 => 177
	i32 2676780864, ; 409: System.Data.Common.dll => 0x9f8c6f40 => 23
	i32 2686887180, ; 410: System.Runtime.Serialization.Xml.dll => 0xa026a50c => 115
	i32 2693849962, ; 411: System.IO.dll => 0xa090e36a => 58
	i32 2701096212, ; 412: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 270
	i32 2715334215, ; 413: System.Threading.Tasks.dll => 0xa1d8b647 => 145
	i32 2715632697, ; 414: DXCore.a.dll => 0xa1dd4439 => 184
	i32 2717744543, ; 415: System.Security.Claims => 0xa1fd7d9f => 119
	i32 2719963679, ; 416: System.Security.Cryptography.Cng.dll => 0xa21f5a1f => 121
	i32 2724373263, ; 417: System.Runtime.Numerics.dll => 0xa262a30f => 111
	i32 2732626843, ; 418: Xamarin.AndroidX.Activity => 0xa2e0939b => 211
	i32 2735172069, ; 419: System.Threading.Channels => 0xa30769e5 => 140
	i32 2737747696, ; 420: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 217
	i32 2740698338, ; 421: ca\Microsoft.Maui.Controls.resources.dll => 0xa35bbce2 => 292
	i32 2740948882, ; 422: System.IO.Pipes.AccessControl => 0xa35f8f92 => 55
	i32 2748088231, ; 423: System.Runtime.InteropServices.JavaScript => 0xa3cc7fa7 => 106
	i32 2752995522, ; 424: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 312
	i32 2758225723, ; 425: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 202
	i32 2764765095, ; 426: Microsoft.Maui.dll => 0xa4caf7a7 => 203
	i32 2765824710, ; 427: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 134
	i32 2770495804, ; 428: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 284
	i32 2778768386, ; 429: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 275
	i32 2779977773, ; 430: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0xa5b3182d => 263
	i32 2785988530, ; 431: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 318
	i32 2788224221, ; 432: Xamarin.AndroidX.Fragment.Ktx.dll => 0xa630ecdd => 241
	i32 2801831435, ; 433: Microsoft.Maui.Graphics => 0xa7008e0b => 205
	i32 2803228030, ; 434: System.Xml.XPath.XDocument.dll => 0xa715dd7e => 160
	i32 2810250172, ; 435: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 228
	i32 2819470561, ; 436: System.Xml.dll => 0xa80db4e1 => 164
	i32 2821205001, ; 437: System.ServiceProcess.dll => 0xa8282c09 => 133
	i32 2821294376, ; 438: Xamarin.AndroidX.ResourceInspection.Annotation => 0xa8298928 => 263
	i32 2824502124, ; 439: System.Xml.XmlDocument => 0xa85a7b6c => 162
	i32 2838993487, ; 440: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 0xa9379a4f => 252
	i32 2849599387, ; 441: System.Threading.Overlapped.dll => 0xa9d96f9b => 141
	i32 2853208004, ; 442: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 275
	i32 2855708567, ; 443: Xamarin.AndroidX.Transition => 0xaa36a797 => 271
	i32 2861098320, ; 444: Mono.Android.Export.dll => 0xaa88e550 => 170
	i32 2861189240, ; 445: Microsoft.Maui.Essentials => 0xaa8a4878 => 204
	i32 2868488919, ; 446: CommunityToolkit.Maui.Core => 0xaaf9aad7 => 175
	i32 2870099610, ; 447: Xamarin.AndroidX.Activity.Ktx.dll => 0xab123e9a => 212
	i32 2875164099, ; 448: Jsr305Binding.dll => 0xab5f85c3 => 280
	i32 2875220617, ; 449: System.Globalization.Calendars.dll => 0xab606289 => 41
	i32 2884993177, ; 450: Xamarin.AndroidX.ExifInterface => 0xabf58099 => 239
	i32 2887636118, ; 451: System.Net.dll => 0xac1dd496 => 82
	i32 2899753641, ; 452: System.IO.UnmanagedMemoryStream => 0xacd6baa9 => 57
	i32 2900621748, ; 453: System.Dynamic.Runtime.dll => 0xace3f9b4 => 38
	i32 2901442782, ; 454: System.Reflection => 0xacf080de => 98
	i32 2905242038, ; 455: mscorlib.dll => 0xad2a79b6 => 167
	i32 2909108768, ; 456: DevExpress.Maui.Charts => 0xad657a20 => 178
	i32 2909740682, ; 457: System.Private.CoreLib => 0xad6f1e8a => 173
	i32 2916838712, ; 458: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 276
	i32 2919462931, ; 459: System.Numerics.Vectors.dll => 0xae037813 => 83
	i32 2921128767, ; 460: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 214
	i32 2921159260, ; 461: DXCore.a => 0xae1d5a5c => 184
	i32 2936416060, ; 462: System.Resources.Reader => 0xaf06273c => 99
	i32 2940926066, ; 463: System.Diagnostics.StackTrace.dll => 0xaf4af872 => 31
	i32 2942453041, ; 464: System.Xml.XPath.XDocument => 0xaf624531 => 160
	i32 2956781122, ; 465: DXEditors.a.dll => 0xb03ce642 => 181
	i32 2959614098, ; 466: System.ComponentModel.dll => 0xb0682092 => 19
	i32 2968338931, ; 467: System.Security.Principal.Windows => 0xb0ed41f3 => 128
	i32 2972252294, ; 468: System.Security.Cryptography.Algorithms.dll => 0xb128f886 => 120
	i32 2975907050, ; 469: DXCharts.a => 0xb160bcea => 177
	i32 2978675010, ; 470: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 235
	i32 2987532451, ; 471: Xamarin.AndroidX.Security.SecurityCrypto => 0xb21220a3 => 266
	i32 2996846495, ; 472: Xamarin.AndroidX.Lifecycle.Process.dll => 0xb2a03f9f => 248
	i32 3016983068, ; 473: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 268
	i32 3023353419, ; 474: WindowsBase.dll => 0xb434b64b => 166
	i32 3024354802, ; 475: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 243
	i32 3038032645, ; 476: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 325
	i32 3053864966, ; 477: fi\Microsoft.Maui.Controls.resources.dll => 0xb6064806 => 298
	i32 3056245963, ; 478: Xamarin.AndroidX.SavedState.SavedState.Ktx => 0xb62a9ccb => 265
	i32 3057625584, ; 479: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 256
	i32 3059408633, ; 480: Mono.Android.Runtime => 0xb65adef9 => 171
	i32 3059793426, ; 481: System.ComponentModel.Primitives => 0xb660be12 => 17
	i32 3075834255, ; 482: System.Threading.Tasks => 0xb755818f => 145
	i32 3090735792, ; 483: System.Security.Cryptography.X509Certificates.dll => 0xb838e2b0 => 126
	i32 3099732863, ; 484: System.Security.Claims.dll => 0xb8c22b7f => 119
	i32 3103600923, ; 485: System.Formats.Asn1 => 0xb8fd311b => 39
	i32 3111772706, ; 486: System.Runtime.Serialization => 0xb979e222 => 116
	i32 3121463068, ; 487: System.IO.FileSystem.AccessControl.dll => 0xba0dbf1c => 48
	i32 3124832203, ; 488: System.Threading.Tasks.Extensions => 0xba4127cb => 143
	i32 3132293585, ; 489: System.Security.AccessControl => 0xbab301d1 => 118
	i32 3147165239, ; 490: System.Diagnostics.Tracing.dll => 0xbb95ee37 => 35
	i32 3148237826, ; 491: GoogleGson.dll => 0xbba64c02 => 191
	i32 3159123045, ; 492: System.Reflection.Primitives.dll => 0xbc4c6465 => 96
	i32 3160747431, ; 493: System.IO.MemoryMappedFiles => 0xbc652da7 => 54
	i32 3178803400, ; 494: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 257
	i32 3192346100, ; 495: System.Security.SecureString => 0xbe4755f4 => 130
	i32 3193515020, ; 496: System.Web => 0xbe592c0c => 154
	i32 3204380047, ; 497: System.Data.dll => 0xbefef58f => 25
	i32 3209718065, ; 498: System.Xml.XmlDocument.dll => 0xbf506931 => 162
	i32 3211777861, ; 499: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 234
	i32 3220365878, ; 500: System.Threading => 0xbff2e236 => 149
	i32 3226221578, ; 501: System.Runtime.Handles.dll => 0xc04c3c0a => 105
	i32 3251039220, ; 502: System.Reflection.DispatchProxy.dll => 0xc1c6ebf4 => 90
	i32 3258312781, ; 503: Xamarin.AndroidX.CardView => 0xc235e84d => 222
	i32 3265493905, ; 504: System.Linq.Queryable.dll => 0xc2a37b91 => 61
	i32 3265893370, ; 505: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 143
	i32 3277815716, ; 506: System.Resources.Writer.dll => 0xc35f7fa4 => 101
	i32 3279906254, ; 507: Microsoft.Win32.Registry.dll => 0xc37f65ce => 6
	i32 3280506390, ; 508: System.ComponentModel.Annotations.dll => 0xc3888e16 => 14
	i32 3290767353, ; 509: System.Security.Cryptography.Encoding => 0xc4251ff9 => 123
	i32 3299363146, ; 510: System.Text.Encoding => 0xc4a8494a => 136
	i32 3303498502, ; 511: System.Diagnostics.FileVersionInfo => 0xc4e76306 => 29
	i32 3305363605, ; 512: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 298
	i32 3309582591, ; 513: DXGrid.a.dll => 0xc54438ff => 186
	i32 3316684772, ; 514: System.Net.Requests.dll => 0xc5b097e4 => 73
	i32 3317135071, ; 515: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 232
	i32 3317144872, ; 516: System.Data => 0xc5b79d28 => 25
	i32 3340431453, ; 517: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 219
	i32 3345895724, ; 518: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 261
	i32 3346324047, ; 519: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 258
	i32 3357674450, ; 520: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 315
	i32 3358260929, ; 521: System.Text.Json => 0xc82afec1 => 138
	i32 3362336904, ; 522: Xamarin.AndroidX.Activity.Ktx => 0xc8693088 => 212
	i32 3362522851, ; 523: Xamarin.AndroidX.Core => 0xc86c06e3 => 229
	i32 3366347497, ; 524: Java.Interop => 0xc8a662e9 => 169
	i32 3374999561, ; 525: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 262
	i32 3381016424, ; 526: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 294
	i32 3395150330, ; 527: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 102
	i32 3403906625, ; 528: System.Security.Cryptography.OpenSsl.dll => 0xcae37e41 => 124
	i32 3405233483, ; 529: Xamarin.AndroidX.CustomView.PoolingContainer => 0xcaf7bd4b => 233
	i32 3428513518, ; 530: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 194
	i32 3429136800, ; 531: System.Xml => 0xcc6479a0 => 164
	i32 3430777524, ; 532: netstandard => 0xcc7d82b4 => 168
	i32 3441283291, ; 533: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 236
	i32 3445260447, ; 534: System.Formats.Tar => 0xcd5a809f => 40
	i32 3452344032, ; 535: Microsoft.Maui.Controls.Compatibility.dll => 0xcdc696e0 => 200
	i32 3458724246, ; 536: pt\Microsoft.Maui.Controls.resources.dll => 0xce27f196 => 313
	i32 3471940407, ; 537: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 18
	i32 3476120550, ; 538: Mono.Android => 0xcf3163e6 => 172
	i32 3484440000, ; 539: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 314
	i32 3485117614, ; 540: System.Text.Json.dll => 0xcfbaacae => 138
	i32 3486566296, ; 541: System.Transactions => 0xcfd0c798 => 151
	i32 3493954962, ; 542: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 225
	i32 3503731303, ; 543: DXGrid.a => 0xd0d6b267 => 186
	i32 3509114376, ; 544: System.Xml.Linq => 0xd128d608 => 156
	i32 3515174580, ; 545: System.Security.dll => 0xd1854eb4 => 131
	i32 3530912306, ; 546: System.Configuration => 0xd2757232 => 20
	i32 3539954161, ; 547: System.Net.HttpListener => 0xd2ff69f1 => 66
	i32 3560100363, ; 548: System.Threading.Timer => 0xd432d20b => 148
	i32 3570554715, ; 549: System.IO.FileSystem.AccessControl => 0xd4d2575b => 48
	i32 3573573763, ; 550: DevExpress.Maui.CollectionView => 0xd5006883 => 180
	i32 3580758918, ; 551: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 322
	i32 3592228221, ; 552: zh-Hant\Microsoft.Maui.Controls.resources.dll => 0xd61d0d7d => 324
	i32 3597029428, ; 553: Xamarin.Android.Glide.GifDecoder.dll => 0xd6665034 => 210
	i32 3598340787, ; 554: System.Net.WebSockets.Client => 0xd67a52b3 => 80
	i32 3608519521, ; 555: System.Linq.dll => 0xd715a361 => 62
	i32 3624195450, ; 556: System.Runtime.InteropServices.RuntimeInformation => 0xd804d57a => 107
	i32 3627220390, ; 557: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 260
	i32 3633644679, ; 558: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 214
	i32 3638274909, ; 559: System.IO.FileSystem.Primitives.dll => 0xd8dbab5d => 50
	i32 3641597786, ; 560: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 246
	i32 3643446276, ; 561: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 319
	i32 3643854240, ; 562: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 257
	i32 3645089577, ; 563: System.ComponentModel.DataAnnotations => 0xd943a729 => 15
	i32 3645965043, ; 564: DXScheduler.a => 0xd95102f3 => 189
	i32 3657292374, ; 565: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 193
	i32 3660523487, ; 566: System.Net.NetworkInformation => 0xda2f27df => 69
	i32 3672681054, ; 567: Mono.Android.dll => 0xdae8aa5e => 172
	i32 3682565725, ; 568: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 221
	i32 3684561358, ; 569: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 225
	i32 3689084180, ; 570: DXCollectionView.a.dll => 0xdbe2f514 => 179
	i32 3689375977, ; 571: System.Drawing.Common => 0xdbe768e9 => 206
	i32 3700866549, ; 572: System.Net.WebProxy.dll => 0xdc96bdf5 => 79
	i32 3706696989, ; 573: Xamarin.AndroidX.Core.Core.Ktx.dll => 0xdcefb51d => 230
	i32 3716563718, ; 574: System.Runtime.Intrinsics => 0xdd864306 => 109
	i32 3718780102, ; 575: Xamarin.AndroidX.Annotation => 0xdda814c6 => 213
	i32 3724971120, ; 576: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 256
	i32 3732100267, ; 577: System.Net.NameResolution => 0xde7354ab => 68
	i32 3737834244, ; 578: System.Net.Http.Json.dll => 0xdecad304 => 64
	i32 3748608112, ; 579: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 28
	i32 3751444290, ; 580: System.Xml.XPath => 0xdf9a7f42 => 161
	i32 3751619990, ; 581: da\Microsoft.Maui.Controls.resources.dll => 0xdf9d2d96 => 294
	i32 3753988493, ; 582: DevExpress.Maui.Controls.dll => 0xdfc1518d => 183
	i32 3777270291, ; 583: DevExpress.Maui.Editors => 0xe1249213 => 188
	i32 3786282454, ; 584: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 223
	i32 3792276235, ; 585: System.Collections.NonGeneric => 0xe2098b0b => 11
	i32 3800979733, ; 586: Microsoft.Maui.Controls.Compatibility => 0xe28e5915 => 200
	i32 3802395368, ; 587: System.Collections.Specialized.dll => 0xe2a3f2e8 => 12
	i32 3817368567, ; 588: CommunityToolkit.Maui.dll => 0xe3886bf7 => 174
	i32 3819260425, ; 589: System.Net.WebProxy => 0xe3a54a09 => 79
	i32 3823082795, ; 590: System.Security.Cryptography.dll => 0xe3df9d2b => 127
	i32 3829621856, ; 591: System.Numerics.dll => 0xe4436460 => 84
	i32 3841636137, ; 592: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 195
	i32 3844307129, ; 593: System.Net.Mail.dll => 0xe52378b9 => 67
	i32 3844802764, ; 594: LoginApp.resources.dll => 0xe52b08cc => 0
	i32 3849253459, ; 595: System.Runtime.InteropServices.dll => 0xe56ef253 => 108
	i32 3870376305, ; 596: System.Net.HttpListener.dll => 0xe6b14171 => 66
	i32 3873536506, ; 597: System.Security.Principal => 0xe6e179fa => 129
	i32 3875112723, ; 598: System.Security.Cryptography.Encoding.dll => 0xe6f98713 => 123
	i32 3885497537, ; 599: System.Net.WebHeaderCollection.dll => 0xe797fcc1 => 78
	i32 3885922214, ; 600: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 271
	i32 3888767677, ; 601: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 261
	i32 3893086827, ; 602: DXNavigation.a.dll => 0xe80bca6b => 182
	i32 3896106733, ; 603: System.Collections.Concurrent.dll => 0xe839deed => 9
	i32 3896760992, ; 604: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 229
	i32 3901907137, ; 605: Microsoft.VisualBasic.Core.dll => 0xe89260c1 => 3
	i32 3920221145, ; 606: nl\Microsoft.Maui.Controls.resources.dll => 0xe9a9d3d9 => 310
	i32 3920810846, ; 607: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 45
	i32 3921031405, ; 608: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 274
	i32 3928044579, ; 609: System.Xml.ReaderWriter => 0xea213423 => 157
	i32 3930554604, ; 610: System.Security.Principal.dll => 0xea4780ec => 129
	i32 3931092270, ; 611: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 259
	i32 3945713374, ; 612: System.Data.DataSetExtensions.dll => 0xeb2ecede => 24
	i32 3953953790, ; 613: System.Text.Encoding.CodePages => 0xebac8bfe => 134
	i32 3955647286, ; 614: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 216
	i32 3958304432, ; 615: DevExpress.Data.v23.2 => 0xebeeeeb0 => 176
	i32 3959773229, ; 616: Xamarin.AndroidX.Lifecycle.Process => 0xec05582d => 248
	i32 4003436829, ; 617: System.Diagnostics.Process.dll => 0xee9f991d => 30
	i32 4015948917, ; 618: Xamarin.AndroidX.Annotation.Jvm.dll => 0xef5e8475 => 215
	i32 4025784931, ; 619: System.Memory => 0xeff49a63 => 63
	i32 4046471985, ; 620: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 202
	i32 4054681211, ; 621: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 91
	i32 4068434129, ; 622: System.Private.Xml.Linq.dll => 0xf27f60d1 => 88
	i32 4073602200, ; 623: System.Threading.dll => 0xf2ce3c98 => 149
	i32 4091086043, ; 624: el\Microsoft.Maui.Controls.resources.dll => 0xf3d904db => 296
	i32 4094352644, ; 625: Microsoft.Maui.Essentials.dll => 0xf40add04 => 204
	i32 4099507663, ; 626: System.Drawing.dll => 0xf45985cf => 37
	i32 4100113165, ; 627: System.Private.Uri => 0xf462c30d => 87
	i32 4101593132, ; 628: Xamarin.AndroidX.Emoji2 => 0xf479582c => 237
	i32 4103439459, ; 629: uk\Microsoft.Maui.Controls.resources.dll => 0xf4958463 => 320
	i32 4126470640, ; 630: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 194
	i32 4127667938, ; 631: System.IO.FileSystem.Watcher => 0xf60736e2 => 51
	i32 4130442656, ; 632: System.AppContext => 0xf6318da0 => 7
	i32 4147896353, ; 633: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 91
	i32 4150914736, ; 634: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 320
	i32 4151237749, ; 635: System.Core => 0xf76edc75 => 22
	i32 4159265925, ; 636: System.Xml.XmlSerializer => 0xf7e95c85 => 163
	i32 4161255271, ; 637: System.Reflection.TypeExtensions => 0xf807b767 => 97
	i32 4164802419, ; 638: System.IO.FileSystem.Watcher.dll => 0xf83dd773 => 51
	i32 4181436372, ; 639: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 114
	i32 4182413190, ; 640: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 253
	i32 4185676441, ; 641: System.Security => 0xf97c5a99 => 131
	i32 4196529839, ; 642: System.Net.WebClient.dll => 0xfa21f6af => 77
	i32 4213026141, ; 643: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 28
	i32 4249188766, ; 644: nb\Microsoft.Maui.Controls.resources.dll => 0xfd45799e => 309
	i32 4256097574, ; 645: Xamarin.AndroidX.Core.Core.Ktx => 0xfdaee526 => 230
	i32 4258378803, ; 646: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 0xfdd1b433 => 252
	i32 4260525087, ; 647: System.Buffers => 0xfdf2741f => 8
	i32 4271975918, ; 648: Microsoft.Maui.Controls.dll => 0xfea12dee => 201
	i32 4274976490, ; 649: System.Runtime.Numerics => 0xfecef6ea => 111
	i32 4292120959, ; 650: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 253
	i32 4294763496 ; 651: Xamarin.AndroidX.ExifInterface.dll => 0xfffce3e8 => 239
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [652 x i32] [
	i32 69, ; 0
	i32 68, ; 1
	i32 109, ; 2
	i32 249, ; 3
	i32 283, ; 4
	i32 49, ; 5
	i32 291, ; 6
	i32 81, ; 7
	i32 300, ; 8
	i32 146, ; 9
	i32 31, ; 10
	i32 324, ; 11
	i32 125, ; 12
	i32 205, ; 13
	i32 103, ; 14
	i32 308, ; 15
	i32 267, ; 16
	i32 108, ; 17
	i32 267, ; 18
	i32 140, ; 19
	i32 180, ; 20
	i32 287, ; 21
	i32 323, ; 22
	i32 316, ; 23
	i32 78, ; 24
	i32 125, ; 25
	i32 14, ; 26
	i32 223, ; 27
	i32 133, ; 28
	i32 269, ; 29
	i32 152, ; 30
	i32 19, ; 31
	i32 221, ; 32
	i32 183, ; 33
	i32 27, ; 34
	i32 243, ; 35
	i32 2, ; 36
	i32 60, ; 37
	i32 43, ; 38
	i32 92, ; 39
	i32 226, ; 40
	i32 148, ; 41
	i32 245, ; 42
	i32 242, ; 43
	i32 55, ; 44
	i32 70, ; 45
	i32 321, ; 46
	i32 211, ; 47
	i32 84, ; 48
	i32 299, ; 49
	i32 244, ; 50
	i32 189, ; 51
	i32 132, ; 52
	i32 179, ; 53
	i32 56, ; 54
	i32 150, ; 55
	i32 75, ; 56
	i32 146, ; 57
	i32 63, ; 58
	i32 147, ; 59
	i32 325, ; 60
	i32 166, ; 61
	i32 319, ; 62
	i32 227, ; 63
	i32 13, ; 64
	i32 240, ; 65
	i32 126, ; 66
	i32 153, ; 67
	i32 114, ; 68
	i32 167, ; 69
	i32 190, ; 70
	i32 165, ; 71
	i32 242, ; 72
	i32 255, ; 73
	i32 297, ; 74
	i32 85, ; 75
	i32 199, ; 76
	i32 151, ; 77
	i32 287, ; 78
	i32 61, ; 79
	i32 318, ; 80
	i32 196, ; 81
	i32 52, ; 82
	i32 104, ; 83
	i32 115, ; 84
	i32 41, ; 85
	i32 280, ; 86
	i32 278, ; 87
	i32 121, ; 88
	i32 174, ; 89
	i32 53, ; 90
	i32 45, ; 91
	i32 120, ; 92
	i32 232, ; 93
	i32 310, ; 94
	i32 238, ; 95
	i32 82, ; 96
	i32 137, ; 97
	i32 274, ; 98
	i32 218, ; 99
	i32 9, ; 100
	i32 74, ; 101
	i32 156, ; 102
	i32 289, ; 103
	i32 155, ; 104
	i32 93, ; 105
	i32 284, ; 106
	i32 46, ; 107
	i32 288, ; 108
	i32 110, ; 109
	i32 130, ; 110
	i32 26, ; 111
	i32 208, ; 112
	i32 73, ; 113
	i32 56, ; 114
	i32 47, ; 115
	i32 316, ; 116
	i32 198, ; 117
	i32 233, ; 118
	i32 23, ; 119
	i32 247, ; 120
	i32 206, ; 121
	i32 87, ; 122
	i32 44, ; 123
	i32 161, ; 124
	i32 72, ; 125
	i32 260, ; 126
	i32 301, ; 127
	i32 4, ; 128
	i32 43, ; 129
	i32 64, ; 130
	i32 315, ; 131
	i32 0, ; 132
	i32 17, ; 133
	i32 54, ; 134
	i32 312, ; 135
	i32 283, ; 136
	i32 106, ; 137
	i32 288, ; 138
	i32 305, ; 139
	i32 281, ; 140
	i32 244, ; 141
	i32 35, ; 142
	i32 159, ; 143
	i32 86, ; 144
	i32 33, ; 145
	i32 314, ; 146
	i32 13, ; 147
	i32 52, ; 148
	i32 57, ; 149
	i32 187, ; 150
	i32 264, ; 151
	i32 37, ; 152
	i32 195, ; 153
	i32 282, ; 154
	i32 216, ; 155
	i32 36, ; 156
	i32 295, ; 157
	i32 59, ; 158
	i32 251, ; 159
	i32 191, ; 160
	i32 18, ; 161
	i32 285, ; 162
	i32 165, ; 163
	i32 317, ; 164
	i32 311, ; 165
	i32 307, ; 166
	i32 250, ; 167
	i32 277, ; 168
	i32 313, ; 169
	i32 154, ; 170
	i32 273, ; 171
	i32 258, ; 172
	i32 218, ; 173
	i32 30, ; 174
	i32 53, ; 175
	i32 278, ; 176
	i32 6, ; 177
	i32 293, ; 178
	i32 268, ; 179
	i32 272, ; 180
	i32 224, ; 181
	i32 289, ; 182
	i32 215, ; 183
	i32 235, ; 184
	i32 302, ; 185
	i32 86, ; 186
	i32 277, ; 187
	i32 62, ; 188
	i32 113, ; 189
	i32 322, ; 190
	i32 181, ; 191
	i32 190, ; 192
	i32 58, ; 193
	i32 323, ; 194
	i32 264, ; 195
	i32 100, ; 196
	i32 1, ; 197
	i32 20, ; 198
	i32 228, ; 199
	i32 112, ; 200
	i32 102, ; 201
	i32 103, ; 202
	i32 291, ; 203
	i32 105, ; 204
	i32 281, ; 205
	i32 72, ; 206
	i32 39, ; 207
	i32 33, ; 208
	i32 104, ; 209
	i32 74, ; 210
	i32 297, ; 211
	i32 10, ; 212
	i32 124, ; 213
	i32 47, ; 214
	i32 217, ; 215
	i32 199, ; 216
	i32 10, ; 217
	i32 44, ; 218
	i32 5, ; 219
	i32 265, ; 220
	i32 1, ; 221
	i32 321, ; 222
	i32 32, ; 223
	i32 139, ; 224
	i32 93, ; 225
	i32 94, ; 226
	i32 50, ; 227
	i32 142, ; 228
	i32 176, ; 229
	i32 113, ; 230
	i32 141, ; 231
	i32 234, ; 232
	i32 116, ; 233
	i32 282, ; 234
	i32 158, ; 235
	i32 185, ; 236
	i32 77, ; 237
	i32 185, ; 238
	i32 80, ; 239
	i32 254, ; 240
	i32 38, ; 241
	i32 276, ; 242
	i32 175, ; 243
	i32 238, ; 244
	i32 231, ; 245
	i32 65, ; 246
	i32 139, ; 247
	i32 16, ; 248
	i32 187, ; 249
	i32 117, ; 250
	i32 270, ; 251
	i32 279, ; 252
	i32 226, ; 253
	i32 49, ; 254
	i32 71, ; 255
	i32 81, ; 256
	i32 127, ; 257
	i32 95, ; 258
	i32 122, ; 259
	i32 286, ; 260
	i32 27, ; 261
	i32 247, ; 262
	i32 98, ; 263
	i32 29, ; 264
	i32 222, ; 265
	i32 292, ; 266
	i32 150, ; 267
	i32 170, ; 268
	i32 5, ; 269
	i32 99, ; 270
	i32 34, ; 271
	i32 94, ; 272
	i32 269, ; 273
	i32 196, ; 274
	i32 22, ; 275
	i32 42, ; 276
	i32 171, ; 277
	i32 308, ; 278
	i32 240, ; 279
	i32 300, ; 280
	i32 254, ; 281
	i32 285, ; 282
	i32 279, ; 283
	i32 220, ; 284
	i32 259, ; 285
	i32 3, ; 286
	i32 135, ; 287
	i32 112, ; 288
	i32 197, ; 289
	i32 208, ; 290
	i32 317, ; 291
	i32 59, ; 292
	i32 96, ; 293
	i32 299, ; 294
	i32 40, ; 295
	i32 219, ; 296
	i32 26, ; 297
	i32 95, ; 298
	i32 293, ; 299
	i32 90, ; 300
	i32 100, ; 301
	i32 11, ; 302
	i32 88, ; 303
	i32 304, ; 304
	i32 101, ; 305
	i32 266, ; 306
	i32 192, ; 307
	i32 286, ; 308
	i32 210, ; 309
	i32 296, ; 310
	i32 8, ; 311
	i32 251, ; 312
	i32 207, ; 313
	i32 89, ; 314
	i32 246, ; 315
	i32 155, ; 316
	i32 295, ; 317
	i32 34, ; 318
	i32 117, ; 319
	i32 83, ; 320
	i32 21, ; 321
	i32 12, ; 322
	i32 163, ; 323
	i32 4, ; 324
	i32 203, ; 325
	i32 303, ; 326
	i32 198, ; 327
	i32 197, ; 328
	i32 85, ; 329
	i32 290, ; 330
	i32 65, ; 331
	i32 305, ; 332
	i32 182, ; 333
	i32 273, ; 334
	i32 144, ; 335
	i32 220, ; 336
	i32 188, ; 337
	i32 255, ; 338
	i32 158, ; 339
	i32 42, ; 340
	i32 118, ; 341
	i32 193, ; 342
	i32 209, ; 343
	i32 262, ; 344
	i32 132, ; 345
	i32 76, ; 346
	i32 67, ; 347
	i32 309, ; 348
	i32 173, ; 349
	i32 213, ; 350
	i32 144, ; 351
	i32 107, ; 352
	i32 152, ; 353
	i32 71, ; 354
	i32 303, ; 355
	i32 157, ; 356
	i32 192, ; 357
	i32 122, ; 358
	i32 128, ; 359
	i32 304, ; 360
	i32 153, ; 361
	i32 237, ; 362
	i32 142, ; 363
	i32 224, ; 364
	i32 301, ; 365
	i32 21, ; 366
	i32 15, ; 367
	i32 136, ; 368
	i32 76, ; 369
	i32 60, ; 370
	i32 227, ; 371
	i32 168, ; 372
	i32 169, ; 373
	i32 201, ; 374
	i32 16, ; 375
	i32 75, ; 376
	i32 7, ; 377
	i32 24, ; 378
	i32 307, ; 379
	i32 249, ; 380
	i32 207, ; 381
	i32 92, ; 382
	i32 302, ; 383
	i32 2, ; 384
	i32 178, ; 385
	i32 137, ; 386
	i32 306, ; 387
	i32 250, ; 388
	i32 272, ; 389
	i32 135, ; 390
	i32 70, ; 391
	i32 147, ; 392
	i32 311, ; 393
	i32 290, ; 394
	i32 241, ; 395
	i32 89, ; 396
	i32 97, ; 397
	i32 231, ; 398
	i32 236, ; 399
	i32 306, ; 400
	i32 32, ; 401
	i32 46, ; 402
	i32 245, ; 403
	i32 209, ; 404
	i32 110, ; 405
	i32 159, ; 406
	i32 36, ; 407
	i32 177, ; 408
	i32 23, ; 409
	i32 115, ; 410
	i32 58, ; 411
	i32 270, ; 412
	i32 145, ; 413
	i32 184, ; 414
	i32 119, ; 415
	i32 121, ; 416
	i32 111, ; 417
	i32 211, ; 418
	i32 140, ; 419
	i32 217, ; 420
	i32 292, ; 421
	i32 55, ; 422
	i32 106, ; 423
	i32 312, ; 424
	i32 202, ; 425
	i32 203, ; 426
	i32 134, ; 427
	i32 284, ; 428
	i32 275, ; 429
	i32 263, ; 430
	i32 318, ; 431
	i32 241, ; 432
	i32 205, ; 433
	i32 160, ; 434
	i32 228, ; 435
	i32 164, ; 436
	i32 133, ; 437
	i32 263, ; 438
	i32 162, ; 439
	i32 252, ; 440
	i32 141, ; 441
	i32 275, ; 442
	i32 271, ; 443
	i32 170, ; 444
	i32 204, ; 445
	i32 175, ; 446
	i32 212, ; 447
	i32 280, ; 448
	i32 41, ; 449
	i32 239, ; 450
	i32 82, ; 451
	i32 57, ; 452
	i32 38, ; 453
	i32 98, ; 454
	i32 167, ; 455
	i32 178, ; 456
	i32 173, ; 457
	i32 276, ; 458
	i32 83, ; 459
	i32 214, ; 460
	i32 184, ; 461
	i32 99, ; 462
	i32 31, ; 463
	i32 160, ; 464
	i32 181, ; 465
	i32 19, ; 466
	i32 128, ; 467
	i32 120, ; 468
	i32 177, ; 469
	i32 235, ; 470
	i32 266, ; 471
	i32 248, ; 472
	i32 268, ; 473
	i32 166, ; 474
	i32 243, ; 475
	i32 325, ; 476
	i32 298, ; 477
	i32 265, ; 478
	i32 256, ; 479
	i32 171, ; 480
	i32 17, ; 481
	i32 145, ; 482
	i32 126, ; 483
	i32 119, ; 484
	i32 39, ; 485
	i32 116, ; 486
	i32 48, ; 487
	i32 143, ; 488
	i32 118, ; 489
	i32 35, ; 490
	i32 191, ; 491
	i32 96, ; 492
	i32 54, ; 493
	i32 257, ; 494
	i32 130, ; 495
	i32 154, ; 496
	i32 25, ; 497
	i32 162, ; 498
	i32 234, ; 499
	i32 149, ; 500
	i32 105, ; 501
	i32 90, ; 502
	i32 222, ; 503
	i32 61, ; 504
	i32 143, ; 505
	i32 101, ; 506
	i32 6, ; 507
	i32 14, ; 508
	i32 123, ; 509
	i32 136, ; 510
	i32 29, ; 511
	i32 298, ; 512
	i32 186, ; 513
	i32 73, ; 514
	i32 232, ; 515
	i32 25, ; 516
	i32 219, ; 517
	i32 261, ; 518
	i32 258, ; 519
	i32 315, ; 520
	i32 138, ; 521
	i32 212, ; 522
	i32 229, ; 523
	i32 169, ; 524
	i32 262, ; 525
	i32 294, ; 526
	i32 102, ; 527
	i32 124, ; 528
	i32 233, ; 529
	i32 194, ; 530
	i32 164, ; 531
	i32 168, ; 532
	i32 236, ; 533
	i32 40, ; 534
	i32 200, ; 535
	i32 313, ; 536
	i32 18, ; 537
	i32 172, ; 538
	i32 314, ; 539
	i32 138, ; 540
	i32 151, ; 541
	i32 225, ; 542
	i32 186, ; 543
	i32 156, ; 544
	i32 131, ; 545
	i32 20, ; 546
	i32 66, ; 547
	i32 148, ; 548
	i32 48, ; 549
	i32 180, ; 550
	i32 322, ; 551
	i32 324, ; 552
	i32 210, ; 553
	i32 80, ; 554
	i32 62, ; 555
	i32 107, ; 556
	i32 260, ; 557
	i32 214, ; 558
	i32 50, ; 559
	i32 246, ; 560
	i32 319, ; 561
	i32 257, ; 562
	i32 15, ; 563
	i32 189, ; 564
	i32 193, ; 565
	i32 69, ; 566
	i32 172, ; 567
	i32 221, ; 568
	i32 225, ; 569
	i32 179, ; 570
	i32 206, ; 571
	i32 79, ; 572
	i32 230, ; 573
	i32 109, ; 574
	i32 213, ; 575
	i32 256, ; 576
	i32 68, ; 577
	i32 64, ; 578
	i32 28, ; 579
	i32 161, ; 580
	i32 294, ; 581
	i32 183, ; 582
	i32 188, ; 583
	i32 223, ; 584
	i32 11, ; 585
	i32 200, ; 586
	i32 12, ; 587
	i32 174, ; 588
	i32 79, ; 589
	i32 127, ; 590
	i32 84, ; 591
	i32 195, ; 592
	i32 67, ; 593
	i32 0, ; 594
	i32 108, ; 595
	i32 66, ; 596
	i32 129, ; 597
	i32 123, ; 598
	i32 78, ; 599
	i32 271, ; 600
	i32 261, ; 601
	i32 182, ; 602
	i32 9, ; 603
	i32 229, ; 604
	i32 3, ; 605
	i32 310, ; 606
	i32 45, ; 607
	i32 274, ; 608
	i32 157, ; 609
	i32 129, ; 610
	i32 259, ; 611
	i32 24, ; 612
	i32 134, ; 613
	i32 216, ; 614
	i32 176, ; 615
	i32 248, ; 616
	i32 30, ; 617
	i32 215, ; 618
	i32 63, ; 619
	i32 202, ; 620
	i32 91, ; 621
	i32 88, ; 622
	i32 149, ; 623
	i32 296, ; 624
	i32 204, ; 625
	i32 37, ; 626
	i32 87, ; 627
	i32 237, ; 628
	i32 320, ; 629
	i32 194, ; 630
	i32 51, ; 631
	i32 7, ; 632
	i32 91, ; 633
	i32 320, ; 634
	i32 22, ; 635
	i32 163, ; 636
	i32 97, ; 637
	i32 51, ; 638
	i32 114, ; 639
	i32 253, ; 640
	i32 131, ; 641
	i32 77, ; 642
	i32 28, ; 643
	i32 309, ; 644
	i32 230, ; 645
	i32 252, ; 646
	i32 8, ; 647
	i32 201, ; 648
	i32 111, ; 649
	i32 253, ; 650
	i32 239 ; 651
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 4

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 4

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 4

; Functions

; Function attributes: "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" uwtable willreturn
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
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" }

; Metadata
!llvm.module.flags = !{!0, !1, !7}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.1xx @ f1b7113872c8db3dfee70d11925e81bb752dc8d0"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"NumRegisterParameters", i32 0}
