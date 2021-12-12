SELECT name,
       JSON_EXTRACT(PR, '$.state')              AS state,
       JSON_EXTRACT(PR, '$.title')              AS title,
       JSON_EXTRACT(PR, '$.body')               AS body,
       JSON_EXTRACT(PR, '$.created_at')         AS created_at,
       JSON_EXTRACT(PR, '$.updated_at')         AS updated_at,
       JSON_EXTRACT(PR, '$.closed_at')          AS closed_at,
       JSON_EXTRACT(PR, '$.merged_at')          AS merged_at,
       JSON_EXTRACT(PR, '$.author_association') AS author_association,
       JSON_EXTRACT(PR, '$.auto_merge')         AS auto_merge,
       JSON_EXTRACT(PR, '$.merged')             AS merged,
       JSON_EXTRACT(PR, '$.comments')           AS comments,
       JSON_EXTRACT(PR, '$.review_comments')    AS review_comments,
       JSON_EXTRACT(PR, '$.commits')            AS commits,
       JSON_EXTRACT(PR, '$.additions')          AS additions,
       JSON_EXTRACT(PR, '$.deletions')          AS deletions,
       JSON_EXTRACT(PR, '$.changed_files')      AS changed_files,
       JSON_EXTRACT(PR, '$.user')               AS user
FROM (
  SELECT repo.name, JSON_EXTRACT(payload, '$.pull_request') AS PR
  FROM `githubarchive.month.2021*`
  WHERE type = 'PullRequestEvent'
  AND _TABLE_SUFFIX BETWEEN '01' AND '10'
  AND repo.name IN (
    SELECT name FROM (
    SELECT 121395510 AS id, "CyC2018/CS-Notes" AS name
    UNION ALL
    SELECT 132464395, "Snailclimb/JavaGuide"
    UNION ALL
    SELECT 22790488, "iluwatar/java-design-patterns"
    UNION ALL
    SELECT 160640094, "MisterBooo/LeetCodeAnimation"
    UNION ALL
    SELECT 151834062, "doocs/advanced-java"
    UNION ALL
    SELECT 6296790, "spring-projects/spring-boot"
    UNION ALL
    SELECT 507775, "elastic/elasticsearch"
    UNION ALL
    SELECT 81975372, "kdn251/interviews"
    UNION ALL
    SELECT 127988011, "macrozheng/mall"
    UNION ALL
    SELECT 7508411, "ReactiveX/RxJava"
    UNION ALL
    SELECT 1148753, "spring-projects/spring-framework"
    UNION ALL
    SELECT 20300177, "google/guava"
    UNION ALL
    SELECT 4710920, "apache/dubbo"
    UNION ALL
    SELECT 19148949, "PhilJay/MPAndroidChart"
    UNION ALL
    SELECT 70198875, "airbnb/lottie-android"
    UNION ALL
    SELECT 11267509, "bumptech/glide"
    UNION ALL
    SELECT 64558143, "Blankj/AndroidUtilCode"
    UNION ALL
    SELECT 173228436, "NationalSecurityAgency/ghidra"
    UNION ALL
    SELECT 267775629, "geekxh/hello-algorithm"
    UNION ALL
    SELECT 2562751, "zxing/zxing"
    UNION ALL
    SELECT 9754983, "eugenp/tutorials"
    UNION ALL
    SELECT 1064563, "netty/netty"
    UNION ALL
    SELECT 8859474, "skylot/jadx"
    UNION ALL
    SELECT 146633589, "alibaba/arthas"
    UNION ALL
    SELECT 53127403, "apolloconfig/apollo"
    UNION ALL
    SELECT 159152904, "jeecgboot/jeecg-boot"
    UNION ALL
    SELECT 108252892, "proxyee-down-org/proxyee-down"
    UNION ALL
    SELECT 2700159, "alibaba/druid"
    UNION ALL
    SELECT 2700474, "alibaba/fastjson"
    UNION ALL
    SELECT 110211147, "xkcoding/spring-boot-demo"
    UNION ALL
    SELECT 93152223, "scwang90/SmartRefreshLayout"
    UNION ALL
    SELECT 44662669, "dbeaver/dbeaver"
    UNION ALL
    SELECT 148736243, "qiurunze123/miaosha"
    UNION ALL
    SELECT 55886798, "CymChad/BaseRecyclerViewAdapterHelper"
    UNION ALL
    SELECT 7613257, "SeleniumHQ/selenium"
    UNION ALL
    SELECT 120395176, "alibaba/easyexcel"
    UNION ALL
    SELECT 2990192, "signalapp/Signal-Android"
    UNION ALL
    SELECT 7587038, "alibaba/canal"
    UNION ALL
    SELECT 18723836, "dromara/hutool"
    UNION ALL
    SELECT 2211243, "apache/kafka"
    UNION ALL
    SELECT 32538871, "google/gson"
    UNION ALL
    SELECT 137451403, "alibaba/nacos"
    UNION ALL
    SELECT 126178683, "halo-dev/halo"
    UNION ALL
    SELECT 47023603, "xuxueli/xxl-job"
    UNION ALL
    SELECT 5373551, "libgdx/libgdx"
    UNION ALL
    SELECT 20818126, "google/ExoPlayer"
    UNION ALL
    SELECT 144705602, "didi/DoraemonKit"
    UNION ALL
    SELECT 13862381, "DrKLO/Telegram"
    UNION ALL
    SELECT 45721011, "apache/skywalking"
    UNION ALL
    SELECT 1103607, "jenkinsci/jenkins"
    UNION ALL
    SELECT 5084750, "Baseflow/PhotoView"
    UNION ALL
    SELECT 15823460, "redisson/redisson"
    UNION ALL
    SELECT 20773773, "bazelbuild/bazel"
    UNION ALL
    SELECT 20587599, "apache/flink"
    UNION ALL
    SELECT 2862290, "nostra13/Android-Universal-Image-Loader"
    UNION ALL
    SELECT 73614722, "CarGuo/GSYVideoPlayer"
    UNION ALL
    SELECT 31533997, "facebook/fresco"
    UNION ALL
    SELECT 126365965, "linlinjava/litemall"
    UNION ALL
    SELECT 8205602, "mybatis/mybatis-3"
    UNION ALL
    SELECT 69953445, "shuzheng/zheng"
    UNION ALL
    SELECT 49662222, "oracle/graal"
    UNION ALL
    SELECT 7010724, "dianping/cat"
    UNION ALL
    SELECT 75164823, "apache/rocketmq"
    UNION ALL
    SELECT 41889031, "TeamNewPipe/NewPipe"
    UNION ALL
    SELECT 4576305, "openzipkin/zipkin"
    UNION ALL
    SELECT 49876476, "apache/shardingsphere"
    UNION ALL
    SELECT 80233816, "lottie-react-native/lottie-react-native"
    UNION ALL
    SELECT 66179765, "dyc87112/SpringBoot-Learning"
    UNION ALL
    SELECT 76413186, "alibaba/ARouter"
    UNION ALL
    SELECT 88970564, "Tencent/QMUI_Android"
    UNION ALL
    SELECT 75643096, "material-components/material-components-android"
    UNION ALL
    SELECT 89822531, "Anuken/Mindustry"
    UNION ALL
    SELECT 3766706, "iBotPeaches/Apktool"
    UNION ALL
    SELECT 5349565, "prestodb/presto"
    UNION ALL
    SELECT 25201361, "Konloch/bytecode-viewer"
    UNION ALL
    SELECT 112717963, "android-hacker/VirtualXposed"
    UNION ALL
    SELECT 1911523, "eclipse-vertx/vert.x"
    UNION ALL
    SELECT 6207167, "mockito/mockito"
    UNION ALL
    SELECT 14734876, "eclipse/deeplearning4j"
    UNION ALL
    SELECT 919161, "arduino/Arduino"
    UNION ALL
    SELECT 23418517, "apache/hadoop"
    UNION ALL
    SELECT 74359442, "Tencent/APIJSON"
    UNION ALL
    SELECT 65987043, "baomidou/mybatis-plus"
    UNION ALL
    SELECT 25459400, "pinpoint-apm/pinpoint"
    UNION ALL
    SELECT 56829582, "youth5201314/banner"
    UNION ALL
    SELECT 149121954, "openjdk/jdk"
    UNION ALL
    SELECT 6358188, "apache/druid"
    UNION ALL
    SELECT 118497841, "GoogleContainerTools/jib"
    UNION ALL
    SELECT 85371262, "williamfiset/Algorithms"
    UNION ALL
    SELECT 4084908, "realm/realm-java"
    UNION ALL
    SELECT 4839957, "jfeinstein10/SlidingMenu"
    UNION ALL
    SELECT 3116751, "androidannotations/androidannotations"
    UNION ALL
    SELECT 163721192, "zhisheng17/flink-learning"
    UNION ALL
    SELECT 49068243, "Yalantis/uCrop"
    UNION ALL
    SELECT 77993578, "LuckSiege/PictureSelector"
    UNION ALL
    SELECT 501687, "antlr/antlr4"
    UNION ALL
    SELECT 5198041, "Netflix/eureka"
    UNION ALL
    SELECT 80171078, "hyb1996/Auto.js"
    UNION ALL
    SELECT 174765647, "heibaiying/BigData-Notes"
    UNION ALL
    SELECT 221862, "projectlombok/lombok"
    UNION ALL
    SELECT 181012406, "macrozheng/mall-learning"
    UNION ALL
    SELECT 117965972, "alibaba/DataX"
    UNION ALL
    SELECT 62117812, "apache/pulsar"
    UNION ALL
    SELECT 65885, "aosp-mirror/platform_frameworks_base"
    UNION ALL
    SELECT 54783462, "daniulive/SmarterStreaming"
    UNION ALL
    SELECT 87536046, "janishar/mit-deep-learning-book-pdf"
    UNION ALL
    SELECT 52344952, "YoKeyword/Fragmentation"
    UNION ALL
    SELECT 26363421, "ksoichiro/Android-ObservableScrollView"
    UNION ALL
    SELECT 29012058, "wasabeef/glide-transformations"
    UNION ALL
    SELECT 2349728, "pockethub/PocketHub"
    UNION ALL
    SELECT 10230369, "google/auto"
    UNION ALL
    SELECT 6650539, "neo4j/neo4j"
    UNION ALL
    SELECT 27729926, "grpc/grpc-java"
    UNION ALL
    SELECT 747512, "clojure/clojure"
    UNION ALL
    SELECT 125600395, "paascloud/paascloud-master"
    UNION ALL
    SELECT 38415498, "careercup/CtCI-6th-Edition"
    UNION ALL
    SELECT 27519800, "MyCATApache/Mycat-Server"
    UNION ALL
    SELECT 2352744, "apereo/cas"
    UNION ALL
    SELECT 46844958, "DuGuQiuBai/Java"
    UNION ALL
    SELECT 139914932, "quarkusio/quarkus"
    UNION ALL
    SELECT 53991171, "roughike/BottomBar"
    UNION ALL
    SELECT 6220644, "OpenRefine/OpenRefine"
    UNION ALL
    SELECT 91065402, "Justson/AgentWeb"
    UNION ALL
    SELECT 62722814, "asLody/VirtualApp"
    UNION ALL
    SELECT 25062303, "android/testing-samples"
    UNION ALL
    SELECT 106310, "junit-team/junit4"
    UNION ALL
    SELECT 5793738, "Activiti/Activiti"
    UNION ALL
    SELECT 9504214, "facebook/buck"
    UNION ALL
    SELECT 209921402, "newbee-ltd/newbee-mall"
    UNION ALL
    SELECT 1272129, "dropwizard/dropwizard"
    UNION ALL
    SELECT 83398100, "alibaba/atlas"
    UNION ALL
    SELECT 134164777, "crossoverJie/cim"
    UNION ALL
    SELECT 84631679, "huanghaibin-dev/CalendarView"
    UNION ALL
    SELECT 42984727, "ChrisRM/material-theme-jetbrains"
    UNION ALL
    SELECT 57147349, "firebase/quickstart-android"
    UNION ALL
    SELECT 49850704, "hs-web/hsweb-framework"
    UNION ALL
    SELECT 223881576, "macrozheng/mall-swarm"
    UNION ALL
    SELECT 65245890, "airbnb/epoxy"
    UNION ALL
    SELECT 138361150, "doocs/jvm"
    UNION ALL
    SELECT 149001365, "doocs/leetcode"
    UNION ALL
    SELECT 537800, "dropwizard/metrics"
    UNION ALL
    SELECT 80179724, "facebook/litho"
    UNION ALL
    SELECT 42304749, "apache/shardingsphere-elasticjob"
    UNION ALL
    SELECT 14046563, "Bearded-Hen/Android-Bootstrap"
    UNION ALL
    SELECT 217943361, "doocs/source-code-hunter"
    UNION ALL
    SELECT 137013952, "gedoor/MyBookshelf"
    UNION ALL
    SELECT 12384353, "davemorrissey/subsampling-scale-image-view"
    UNION ALL
    SELECT 93732702, "Qihoo360/RePlugin"
    UNION ALL
    SELECT 11997640, "alibaba/otter"
    UNION ALL
    SELECT 2003641, "swagger-api/swagger-core"
    UNION ALL
    SELECT 1680733, "java-native-access/jna"
    UNION ALL
    SELECT 218689982, "KunMinX/Jetpack-MVVM-Best-Practice"
    UNION ALL
    SELECT 173335706, "apache/dolphinscheduler"
    UNION ALL
    SELECT 98596001, "Exrick/xmall"
    UNION ALL
    SELECT 89322848, "Angel-ML/angel"
    UNION ALL
    SELECT 111241370, "ionic-team/capacitor"
    UNION ALL
    SELECT 16446099, "cryptomator/cryptomator"
    UNION ALL
    SELECT 3148979, "spring-projects/spring-security"
    UNION ALL
    SELECT 12499251, "checkstyle/checkstyle"
    UNION ALL
    SELECT 167204613, "wildfirechat/server"
    UNION ALL
    SELECT 10214538, "koush/ion"
    UNION ALL
    SELECT 14135470, "apache/storm"
    UNION ALL
    SELECT 15155534, "gocd/gocd"
    UNION ALL
    SELECT 1326671, "k9mail/k-9"
    UNION ALL
    SELECT 18845024, "google/closure-compiler"
    UNION ALL
    SELECT 1222504, "SonarSource/sonarqube"
    UNION ALL
    SELECT 7170058, "flyway/flyway"
    UNION ALL
    SELECT 83506511, "guardianproject/haven"
    UNION ALL
    SELECT 8957264, "TechEmpower/FrameworkBenchmarks"
    UNION ALL
    SELECT 7807399, "processing/processing"
    UNION ALL
    SELECT 113983289, "kekingcn/kkFileView"
    UNION ALL
    SELECT 5683140, "NLPchina/ansj_seg"
    UNION ALL
    SELECT 160779969, "li-xiaojun/XPopup"
    UNION ALL
    SELECT 29293002, "ArthurHub/Android-Image-Cropper"
    UNION ALL
    SELECT 33166041, "react-native-video/react-native-video"
    UNION ALL
    SELECT 671825, "Graylog2/graylog2-server"
    UNION ALL
    SELECT 1450115, "AsyncHttpClient/async-http-client"
    UNION ALL
    SELECT 16389681, "google/j2objc"
    UNION ALL
    SELECT 237867883, "metersphere/metersphere"
    UNION ALL
    SELECT 16621659, "real-logic/aeron"
    UNION ALL
    SELECT 23206290, "google/error-prone"
    UNION ALL
    SELECT 49820627, "react-native-svg/react-native-svg"
    UNION ALL
    SELECT 2493904, "apache/tomcat"
    UNION ALL
    SELECT 42115933, "sshahine/JFoenix"
    UNION ALL
    SELECT 688352, "apache/jmeter"
    UNION ALL
    SELECT 10873724, "joelittlejohn/jsonschema2pojo"
    UNION ALL
    SELECT 1011539, "rest-assured/rest-assured"
    UNION ALL
    SELECT 82405191, "k0shk0sh/FastHub"
    UNION ALL
    SELECT 61446080, "liyifeng1994/ssm"
    UNION ALL
    SELECT 83851056, "yarolegovich/DiscreteScrollView"
    UNION ALL
    SELECT 76325615, "jpush/aurora-imui"
    UNION ALL
    SELECT 11981144, "languagetool-org/languagetool"
    UNION ALL
    SELECT 92392978, "wxiaoqi/Spring-Cloud-Platform"
    UNION ALL
    SELECT 32848140, "apache/zeppelin"
    UNION ALL
    SELECT 140543886, "apache/incubator-shenyu"
    UNION ALL
    SELECT 4238977, "springfox/springfox"
    UNION ALL
    SELECT 26921116, "haifengl/smile"
    UNION ALL
    SELECT 867564, "robolectric/robolectric"
    UNION ALL
    SELECT 81226206, "karatelabs/karate"
    UNION ALL
    SELECT 13421878, "pentaho/pentaho-kettle"
    UNION ALL
    SELECT 49820627, "react-native-svg/react-native-svg"
    UNION ALL
    SELECT 2493904, "apache/tomcat"
    UNION ALL
    SELECT 42115933, "sshahine/JFoenix"
    UNION ALL
    SELECT 50406544, "sohutv/cachecloud"
    UNION ALL
    SELECT 688352, "apache/jmeter"
    UNION ALL
    SELECT 125948006, "febsteam/FEBS-Shiro"
    UNION ALL
    SELECT 10873724, "joelittlejohn/jsonschema2pojo"
    UNION ALL
    SELECT 50205233, "debezium/debezium"
    UNION ALL
    SELECT 1011539, "rest-assured/rest-assured"
    UNION ALL
    SELECT 82405191, "k0shk0sh/FastHub"
    UNION ALL
    SELECT 61446080, "liyifeng1994/ssm"
    UNION ALL
    SELECT 83851056, "yarolegovich/DiscreteScrollView"
    UNION ALL
    SELECT 76325615, "jpush/aurora-imui"
    UNION ALL
    SELECT 11981144, "languagetool-org/languagetool"
    UNION ALL
    SELECT 92392978, "wxiaoqi/Spring-Cloud-Platform"
    UNION ALL
    SELECT 32848140, "apache/zeppelin"
    UNION ALL
    SELECT 140543886, "apache/incubator-shenyu"
    UNION ALL
    SELECT 4238977, "springfox/springfox"
    UNION ALL
    SELECT 26921116, "haifengl/smile"
    UNION ALL
    SELECT 867564, "robolectric/robolectric"
    UNION ALL
    SELECT 81226206, "karatelabs/karate"
    UNION ALL
    SELECT 13421878, "pentaho/pentaho-kettle"
    UNION ALL
    SELECT 7276954, "Alluxio/alluxio"
    UNION ALL
    SELECT 38602457, "graphql-java/graphql-java"
    UNION ALL
    SELECT 44681400, "gzu-liyujiang/AndroidPicker"
    UNION ALL
    SELECT 184611677, "YunaiV/onemall"
    UNION ALL
    SELECT 124230204, "micronaut-projects/micronaut-core"
    UNION ALL
    SELECT 19257422, "questdb/questdb"
    UNION ALL
    SELECT 50904245, "apache/beam"
    UNION ALL
    SELECT 3301400, "MinecraftForge/MinecraftForge"
    UNION ALL
    SELECT 168802729, "ZXZxin/ZXBlog"
    UNION ALL
    SELECT 64202095, "yipianfengye/android-zxingLibrary"
    UNION ALL
    SELECT 55228103, "Ramotion/folding-cell-android"
    UNION ALL
    SELECT 29102367, "junit-team/junit5"
    UNION ALL
    SELECT 19748251, "claritylab/lucida"
    UNION ALL
    SELECT 8121707, "mybatis/generator"
    UNION ALL
    SELECT 67013973, "rubensousa/GravitySnapHelper"
    UNION ALL
    SELECT 23439463, "btraceio/btrace"
    UNION ALL
    SELECT 33243725, "danikula/AndroidVideoCache"
    UNION ALL
    SELECT 961036, "hibernate/hibernate-orm"
    UNION ALL
    SELECT 156317154, "theonedev/onedev"
    UNION ALL
    SELECT 6709149, "pardom-zz/ActiveAndroid"
    UNION ALL
    SELECT 1756350, "JodaOrg/joda-time"
    UNION ALL
    SELECT 2544305, "wiremock/wiremock"
    UNION ALL
    SELECT 52054756, "AriaLyy/Aria"
    UNION ALL
    SELECT 50160261, "PaperMC/Paper"
    UNION ALL
    SELECT 53330030, "quartz-scheduler/quartz"
    UNION ALL
    SELECT 1051476, "plantuml/plantuml"
    UNION ALL
    SELECT 1625986, "jOOQ/jOOQ"
    UNION ALL
    SELECT 138194433, "Nepxion/Discovery"
    UNION ALL
    SELECT 3786237, "hazelcast/hazelcast"
    UNION ALL
    SELECT 40877175, "chentao0707/SimplifyReader"
    UNION ALL
    SELECT 74271054, "youlookwhat/CloudReader"
    UNION ALL
    SELECT 14696091, "raphw/byte-buddy"
    UNION ALL
    SELECT 69400326, "confluentinc/ksql"
    UNION ALL
    SELECT 49694044, "razerdp/BasePopup"
    UNION ALL
    SELECT 16378879, "vavr-io/vavr"
    UNION ALL
    SELECT 865412, "OpenTSDB/opentsdb"
    UNION ALL
    SELECT 70780002, "flowable/flowable-engine"
    UNION ALL
    SELECT 23823503, "kyleduo/SwitchButton"
    UNION ALL
    SELECT 4470435, "mapstruct/mapstruct"
    UNION ALL
    SELECT 50842053, "zhanghai/Douya"
    UNION ALL
    SELECT 66164298, "romandanylyk/PageIndicatorView"
    UNION ALL
    SELECT 2624521, "gephi/gephi"
    UNION ALL
    SELECT 66590822, "nisrulz/android-tips-tricks"
    UNION ALL
    SELECT 21741891, "spring-cloud/spring-cloud-netflix"
    UNION ALL
    SELECT 129264590, "techGay/v9porn"
    UNION ALL
    SELECT 36708321, "pili-engineering/PLDroidPlayer"
    UNION ALL
    SELECT 83799439, "LawnchairLauncher/lawnchair"
    UNION ALL
    SELECT 60145667, "HotBitmapGG/bilibili-android-client"
    UNION ALL
    SELECT 14758329, "castorflex/SmoothProgressBar"
    UNION ALL
    SELECT 5453989, "jankotek/mapdb"
    UNION ALL
    SELECT 283046497, "airbytehq/airbyte"
    UNION ALL
    SELECT 66023605, "awsdocs/aws-doc-sdk-examples"
    UNION ALL
    SELECT 166435804, "ElderDrivers/EdXposed"
    UNION ALL
    SELECT 7083240, "orientechnologies/orientdb"
    UNION ALL
    SELECT 66323960, "Jasonchenlijian/FastBle"
    UNION ALL
    SELECT 391055597, "kunal-kushwaha/DSA-Bootcamp-Java"
    UNION ALL
    SELECT 9056142, "puniverse/quasar"
    UNION ALL
    SELECT 38835213, "firebase/FirebaseUI-Android"
    UNION ALL
    SELECT 34039690, "apache/groovy"
    UNION ALL
    SELECT 166515022, "trinodb/trino"
    UNION ALL
    SELECT 7716883, "ankidroid/Anki-Android"
    UNION ALL
    SELECT 16381571, "spring-projects/spring-data-examples"
    UNION ALL
    SELECT 20089857, "apache/hbase"
    UNION ALL
    SELECT 19641638, "lettuce-io/lettuce-core"
    UNION ALL
    SELECT 77385607, "JanusGraph/janusgraph"
    UNION ALL
    SELECT 154309083, "getActivity/AndroidProject"
    UNION ALL
    SELECT 197599333, "2227324689/gpmall"
    UNION ALL
    SELECT 167962362, "hansonwang99/Spring-Boot-In-Action"
    UNION ALL
    SELECT 14514251, "bitcoinj/bitcoinj"
    UNION ALL
    SELECT 203183673, "zhaojun1998/zfile"
    UNION ALL
    SELECT 84934979, "Meituan-Dianping/Robust"
    UNION ALL
    SELECT 97580115, "natario1/CameraView"
    UNION ALL
    SELECT 14640193, "CellularPrivacy/Android-IMSI-Catcher-Detector"
    UNION ALL
    SELECT 25739424, "bingoogolapple/BGABanner-Android"
    UNION ALL
    SELECT 117774290, "zuihou/lamp-cloud"
    UNION ALL
    SELECT 334274271, "opensearch-project/OpenSearch"
    UNION ALL
    SELECT 31006158, "apache/ignite"
    UNION ALL
    SELECT 96896313, "ThirtyDegreesRay/OpenHub"
    UNION ALL
    SELECT 86874274, "ZHENFENG13/spring-boot-projects"
    UNION ALL
    SELECT 206317, "apache/camel"
    UNION ALL
    SELECT 206444, "apache/hive"
    UNION ALL
    SELECT 12554530, "alibaba/jstorm"
    UNION ALL
    SELECT 1381673, "kiegroup/drools"
    UNION ALL
    SELECT 16191201, "iNPUTmice/Conversations"
    UNION ALL
    SELECT 84916374, "apache/rocketmq-externals"
    UNION ALL
    SELECT 2675355, "javaparser/javaparser"
    UNION ALL
    SELECT 6271421, "azkaban/azkaban"
    UNION ALL
    SELECT 5244445, "AntennaPod/AntennaPod"
    UNION ALL
    SELECT 618492, "brianfrankcooper/YCSB"
    UNION ALL
    SELECT 111830550, "luckybilly/CC"
    UNION ALL
    SELECT 15958676, "CalebFenton/simplify"
    UNION ALL
    SELECT 216236917, "bjmashibing/InternetArchitect"
    UNION ALL
    SELECT 45903621, "reactor/reactor-core"
    UNION ALL
    SELECT 72979537, "Piasy/BigImageViewer"
    UNION ALL
    SELECT 206877845, "android/views-widgets-samples"
    UNION ALL
    SELECT 39673913, "coobird/thumbnailator"
    UNION ALL
    SELECT 28836678, "Freeyourgadget/Gadgetbridge"
    UNION ALL
    SELECT 1147463, "rstudio/rstudio"
    UNION ALL
    SELECT 87874521, "Doikki/DKVideoPlayer"
    UNION ALL
    SELECT 17662022, "bisq-network/bisq"
    UNION ALL
    SELECT 59032201, "microsoft/malmo"
    UNION ALL
    SELECT 46398090, "linkedin/datahub"
    UNION ALL
    SELECT 60377070, "vespa-engine/vespa"
    UNION ALL
    SELECT 335164964, "dataease/dataease"
    UNION ALL
    SELECT 43243303, "react-native-webrtc/react-native-webrtc"
    UNION ALL
    SELECT 5490568, "meefik/linuxdeploy"
    UNION ALL
    SELECT 143175496, "cabaletta/baritone"
    UNION ALL
    SELECT 291570, "apache/shiro"
    UNION ALL
    SELECT 574877, "aws/aws-sdk-java"
    UNION ALL
    SELECT 19961085, "apache/pinot"
    UNION ALL
    SELECT 75882172, "Netflix/conductor"
    UNION ALL
    SELECT 5722043, "oblac/jodd"
    UNION ALL
    SELECT 4992906, "pmd/pmd"
    UNION ALL
    SELECT 43158694, "apache/incubator-heron"
    UNION ALL
    SELECT 2158982, "querydsl/querydsl"
    UNION ALL
    SELECT 21833183, "TeamAmaze/AmazeFileManager"
    UNION ALL
    SELECT 71317676, "lygttpod/SuperTextView"
    UNION ALL
    SELECT 749137, "Atmosphere/atmosphere"
    UNION ALL
    SELECT 44877925, "M66B/NetGuard"
    UNION ALL
    SELECT 9653752, "jitsi/jitsi"
    UNION ALL
    SELECT 99919302, "apache/incubator-doris"
    UNION ALL
    SELECT 43142077, "mybatis/spring-boot-starter"
    UNION ALL
    SELECT 12983151, "openhab/openhab1-addons"
    UNION ALL
    SELECT 164397881, "xuexiangjys/XUI"
    UNION ALL
    SELECT 34964793, "davideas/FlexibleAdapter"
    UNION ALL
    SELECT 89986770, "Javen205/IJPay"
    UNION ALL
    SELECT 7296244, "LWJGL/lwjgl3"
    UNION ALL
    SELECT 57461213, "runelite/runelite"
    UNION ALL
    SELECT 8426406, "mock-server/mockserver"
    UNION ALL
    SELECT 7481569, "oracle/opengrok"
    UNION ALL
    SELECT 5663857, "jeremylong/DependencyCheck"
    UNION ALL
    SELECT 3480666, "graphhopper/graphhopper"
    UNION ALL
    SELECT 3911317, "rovo89/XposedInstaller"
    UNION ALL
    SELECT 117054584, "apache/dubbo-admin"
    UNION ALL
    SELECT 106187093, "saysky/ForestBlog"
    UNION ALL
    SELECT 94760798, "WVector/AppUpdate"
    UNION ALL
    SELECT 98780134, "ethanhua/Skeleton"
    UNION ALL
    SELECT 46251204, "line/armeria"
    UNION ALL
    SELECT 10262364, "jboss-javassist/javassist"
    UNION ALL
    SELECT 3333998, "knowm/XChange"
    UNION ALL
    SELECT 10113030, "googlemaps/android-maps-utils"
    UNION ALL
    SELECT 96391112, "stylefeng/Guns"
    UNION ALL
    SELECT 4038949, "traccar/traccar"
    UNION ALL
    SELECT 62659210, "liuyubobobo/Play-with-Algorithms"
    UNION ALL
    SELECT 256589781, "androidx/androidx"
    UNION ALL
    SELECT 37844001, "huanghongxun/HMCL"
    UNION ALL
    SELECT 96312832, "andOTP/andOTP"
    UNION ALL
    SELECT 153417149, "java-aodeng/hope-boot"
    UNION ALL
    SELECT 2045207, "eclipse/jetty.project"
    UNION ALL
    SELECT 9342529, "crate/crate"
    UNION ALL
    SELECT 80640282, "remkop/picocli"
    UNION ALL
    SELECT 49219232, "UnevenSoftware/LeafPic"
    UNION ALL
    SELECT 98499283, "Col-E/Recaf"
    UNION ALL
    SELECT 77168103, "uber/AutoDispose"
    UNION ALL
    SELECT 1438007, "MovingBlocks/Terasology"
    UNION ALL
    SELECT 28738447, "apache/kylin"
    UNION ALL
    SELECT 31272860, "vert-x3/vertx-examples"
    UNION ALL
    SELECT 174291606, "zlt2000/microservices-platform"
    UNION ALL
    SELECT 200004447, "qunarcorp/bistoury"
    UNION ALL
    SELECT 148008538, "JavaNoober/BackgroundLibrary"
    UNION ALL
    SELECT 222578036, "WeiYe-Jing/datax-web"
    UNION ALL
    SELECT 248416273, "didi/LogiKM"
    UNION ALL
    SELECT 247659028, "PowerJob/PowerJob"
    UNION ALL
    SELECT 87859908, "micrometer-metrics/micrometer"
    UNION ALL
    SELECT 23913470, "WritingMinds/ffmpeg-android-java"
    UNION ALL
    SELECT 102474797, "zwwill/yanxuan-weex-demo"
    UNION ALL
    SELECT 118602757, "burhanrashid52/PhotoEditor"
    UNION ALL
    SELECT 64578459, "fishercoder1534/Leetcode"
    UNION ALL
    SELECT 5103785, "undertow-io/undertow"
    UNION ALL
    SELECT 15771504, "guoguibing/librec"
    UNION ALL
    SELECT 30561160, "zendesk/maxwell"
    UNION ALL
    SELECT 122837111, "subhra74/xdm"
    UNION ALL
    SELECT 1161862, "spockframework/spock"
    UNION ALL
    SELECT 72753876, "woxingxiao/BubbleSeekBar"
    UNION ALL
    SELECT 56664648, "NotFound9/interviewGuide"
    UNION ALL
    SELECT 33745913, "h2database/h2database"
    UNION ALL
    SELECT 11233996, "immutables/immutables"
    UNION ALL
    SELECT 76313874, "lenve/JavaEETest"
    UNION ALL
    SELECT 14514767, "Red5/red5-server"
    UNION ALL
    SELECT 4950187, "jacoco/jacoco"
    UNION ALL
    SELECT 13455471, "mplushnikov/lombok-intellij-plugin"
    UNION ALL
    SELECT 52658839, "zaaach/CityPicker"
    UNION ALL
    SELECT 121948748, "florent37/ShapeOfView"
    UNION ALL
    SELECT 156776442, "trojan-gfw/igniter"
    UNION ALL
    SELECT 163073783, "mxdldev/android-mvp-mvvm-flytour"
    UNION ALL
    SELECT 86270752, "yarolegovich/SlidingRootNav"
    UNION ALL
    SELECT 283211901, "yuliskov/SmartTubeNext"
    UNION ALL
    SELECT 3038937, "FasterXML/jackson-databind"
    UNION ALL
    SELECT 73930305, "ballerina-platform/ballerina-lang"
    UNION ALL
    SELECT 43406976, "react-native-share/react-native-share"
    UNION ALL
    SELECT 30326497, "ZieIony/Carbon"
    UNION ALL
    SELECT 63110867, "vaticle/typedb"
    UNION ALL
    SELECT 4368712, "javaee/jersey"
    UNION ALL
    SELECT 94169028, "evrencoskun/TableView"
    UNION ALL
    SELECT 1258570, "osmandapp/OsmAnd"
    UNION ALL
    SELECT 25688387, "ltsopensource/light-task-scheduler"
    UNION ALL
    SELECT 19647328, "jindrapetrik/jpexs-decompiler"
    UNION ALL
    SELECT 69469299, "apollographql/apollo-android"
    UNION ALL
    SELECT 150938406, "alibaba/Alink"
    UNION ALL
    SELECT 44092178, "iwgang/CountdownView"
    UNION ALL
    SELECT 21758436, "CrawlScript/WebCollector"
    UNION ALL
    SELECT 115411826, "tronprotocol/java-tron"
    UNION ALL
    SELECT 27911088, "apache/nifi"
    UNION ALL
    SELECT 2019791, "liquibase/liquibase"
    UNION ALL
    SELECT 206873260, "android/user-interface-samples"
    UNION ALL
    SELECT 3407114, "oshi/oshi"
    UNION ALL
    SELECT 137497481, "getActivity/XXPermissions"
    UNION ALL
    SELECT 86446090, "jiajunhui/PlayerBase"
    UNION ALL
    SELECT 206483, "apache/maven"
    UNION ALL
    SELECT 104254445, "PhilippC/keepass2android"
    UNION ALL
    SELECT 56817418, "FinalTeam/RxGalleryFinal"
    UNION ALL
    SELECT 50250915, "jenkinsci/blueocean-plugin"
    UNION ALL
    SELECT 101408117, "eclipse-openj9/openj9"
    UNION ALL
    SELECT 231921809, "supertokens/supertokens-core"
    UNION ALL
    SELECT 24782902, "cSploit/android"
    UNION ALL
    SELECT 17960746, "jMonkeyEngine/jmonkeyengine"
    UNION ALL
    SELECT 58194180, "strimzi/strimzi-kafka-operator"
    UNION ALL
    SELECT 21193524, "apache/calcite"
    UNION ALL
    SELECT 48880766, "jtablesaw/tablesaw"
    UNION ALL
    SELECT 38356820, "fengjundev/Android-Skin-Loader"
    UNION ALL
    SELECT 1541275, "killme2008/aviatorscript"
    UNION ALL
    SELECT 195856796, "GeyserMC/Geyser"
    UNION ALL
    SELECT 79420104, "Hitomis/transferee"
    UNION ALL
    SELECT 56787441, "Dimezis/BlurView"
    UNION ALL
    SELECT 226096934, "jeecgboot/JimuReport"
    UNION ALL
    SELECT 220875250, "201206030/fiction_house"
    UNION ALL
    SELECT 124166804, "flutter-webrtc/flutter-webrtc"
    UNION ALL
    SELECT 764708, "wildfly/wildfly"
    UNION ALL
    SELECT 100145739, "lbryio/lbry-android"
    UNION ALL
    SELECT 17359057, "apache/curator"
    UNION ALL
    SELECT 165214494, "ddd-by-examples/library"
    UNION ALL
    SELECT 3886965, "bitcoin-wallet/bitcoin-wallet"
    UNION ALL
    SELECT 60561834, "nextcloud/android"
    UNION ALL
    SELECT 88212936, "pchmn/MaterialChipsInput"
    UNION ALL
    SELECT 320785435, "LSPosed/LSPosed"
    UNION ALL
    SELECT 7044667, "spring-projects/spring-loaded"
    UNION ALL
    SELECT 133914124, "ngbdf/redis-manager"
    UNION ALL
    SELECT 184604, "Twitter4J/Twitter4J"
    UNION ALL
    SELECT 105117953, "yangchong211/LifeHelper"
    UNION ALL
    SELECT 31720673, "kabouzeid/Phonograph"
    UNION ALL
    SELECT 165767349, "tianshiyeben/wgcloud"
    UNION ALL
    SELECT 95203155, "rememberber/WePush"
    UNION ALL
    SELECT 127906883, "DTStack/flinkx"
    UNION ALL
    SELECT 40520570, "bm-x/PhotoView"
    UNION ALL
    SELECT 9749905, "spring-projects/spring-data-elasticsearch"
    UNION ALL
    SELECT 12559641, "real-logic/simple-binary-encoding"
    UNION ALL
    SELECT 146285827, "oracle/helidon"
    UNION ALL
    SELECT 12019742, "katzer/cordova-plugin-local-notifications"
    UNION ALL
    SELECT 2899580, "AxonFramework/AxonFramework"
    UNION ALL
    SELECT 61480983, "williamfiset/DEPRECATED-data-structures"
    UNION ALL
    SELECT 59838788, "allure-framework/allure2"
    UNION ALL
    SELECT 72889410, "spotbugs/spotbugs"
    UNION ALL
    SELECT 124503196, "JsonChao/Awesome-WanAndroid"
    UNION ALL
    SELECT 2751199, "geoserver/geoserver"
    UNION ALL
    SELECT 86439045, "zhpanvip/BannerViewPager"
    UNION ALL
    SELECT 214605, "voldemort/voldemort"
    UNION ALL
    SELECT 1968850, "angryip/ipscan"
    UNION ALL
    SELECT 6789509, "shopizer-ecommerce/shopizer"
    UNION ALL
    SELECT 57029460, "Ramotion/paper-onboarding-android"
    UNION ALL
    SELECT 47880207, "DV8FromTheWorld/JDA"
    UNION ALL
    SELECT 47186418, "AigeStudio/WheelPicker"
    UNION ALL
    SELECT 37816257, "javamelody/javamelody"
    UNION ALL
    SELECT 143298715, "M66B/FairEmail"
    UNION ALL
    SELECT 93503295, "JessYanCoding/ProgressManager"
    UNION ALL
    SELECT 12853082, "sannies/mp4parser"
    UNION ALL
    SELECT 10437688, "OpenHFT/Chronicle-Queue"
    UNION ALL
    SELECT 108050, "mongodb/mongo-java-driver"
    UNION ALL
    SELECT 1873881, "nutzam/nutz"
    UNION ALL
    SELECT 76474200, "apache/hudi"
    UNION ALL
    SELECT 18511687, "igniterealtime/Openfire"
    UNION ALL
    SELECT 10746583, "RoaringBitmap/RoaringBitmap"
    UNION ALL
    SELECT 5713702, "fossasia/phimpme-android"
    UNION ALL
    SELECT 144542661, "xiaojinzi123/Component"
    UNION ALL
    SELECT 1370858, "kiegroup/optaplanner"
    UNION ALL
    SELECT 8247368, "mybatis/spring"
    UNION ALL
    SELECT 1466080, "sqlcipher/android-database-sqlcipher"
    UNION ALL
    SELECT 69958211, "zalando/zalenium"
    UNION ALL
    SELECT 6325420, "killbill/killbill"
    UNION ALL
    SELECT 45096760, "widdix/aws-cf-templates"
    UNION ALL
    SELECT 97660576, "CainKernel/CainCamera"
    UNION ALL
    SELECT 40642004, "react-native-google-signin/google-signin"
    UNION ALL
    SELECT 17634071, "JabRef/jabref"
    UNION ALL
    SELECT 68240213, "fossasia/susi_server"
    UNION ALL
    SELECT 1962219, "cucumber/cucumber-jvm"
    UNION ALL
    SELECT 1936771, "google/truth"
    UNION ALL
    SELECT 45239059, "andpor/react-native-sqlite-storage"
    UNION ALL
    SELECT 173712402, "ZHENFENG13/My-Blog"
    UNION ALL
    SELECT 54762731, "JPressProjects/jpress"
    UNION ALL
    SELECT 32675488, "yacy/yacy_search_server"
    UNION ALL
    SELECT 15120144, "federicoiosue/Omni-Notes"
    UNION ALL
    SELECT 21686543, "qiujuer/Genius-Android"
    UNION ALL
    SELECT 231329990, "jetlinks/jetlinks-community"
    UNION ALL
    SELECT 32761091, "AlmasB/FXGL"
    UNION ALL
    SELECT 7420937, "camunda/camunda-bpm-platform"
    UNION ALL
    SELECT 107494116, "HuanTanSheng/EasyPhotos"
    UNION ALL
    SELECT 21985130, "OpenHFT/Chronicle-Map"
    UNION ALL
    SELECT 55052303, "Azoft/CarouselLayoutManager"
    UNION ALL
    SELECT 16477702, "igniterealtime/Smack"
    UNION ALL
    SELECT 206370, "apache/nutch"
    UNION ALL
    SELECT 198368711, "apache/incubator-linkis"
    UNION ALL
    SELECT 130897005, "WhatsApp/stickers"
    UNION ALL
    SELECT 17488986, "osmdroid/osmdroid"
    UNION ALL
    SELECT 20322927, "alexvasilkov/GestureViews"
    UNION ALL
    SELECT 253568386, "JetBrains/skija"
    UNION ALL
    SELECT 34685800, "diffplug/spotless"
    UNION ALL
    SELECT 212488700, "pytorch/serve"
    UNION ALL
    SELECT 41310523, "eclipse/deeplearning4j-examples"
    UNION ALL
    SELECT 32567673, "Sayi/poi-tl"
    UNION ALL
    SELECT 108965444, "charles2gan/GDA-android-reversing-Tool"
    UNION ALL
    SELECT 218396611, "deepjavalibrary/djl"
    UNION ALL
    SELECT 4405468, "medcl/elasticsearch-analysis-pinyin"
    UNION ALL
    SELECT 206378, "apache/commons-lang"
    UNION ALL
    SELECT 2198510, "apache/flume"
    UNION ALL
    SELECT 944926, "EngineHub/WorldEdit"
    UNION ALL
    SELECT 260634414, "201206030/novel-plus"
    UNION ALL
    SELECT 34364279, "googlemaps/android-samples"
    UNION ALL
    SELECT 16294920, "atomix/atomix"
    UNION ALL
    SELECT 29653587, "hidroh/materialistic"
    UNION ALL
    SELECT 80907025, "smartloli/EFAK"
    UNION ALL
    SELECT 283325, "qos-ch/logback"
    UNION ALL
    SELECT 6944525, "linkedin/rest.li"
    UNION ALL
    SELECT 74977883, "codingXiaxw/seckill"
    UNION ALL
    SELECT 1215215, "Bukkit/Bukkit"
    UNION ALL
    SELECT 148059143, "tchiotludo/akhq"
    UNION ALL
    SELECT 83182364, "xubinux/xbin-store"
    UNION ALL
    SELECT 63081349, "LibrePDF/OpenPDF"
    UNION ALL
    SELECT 176555805, "shuzijun/leetcode-editor"
    UNION ALL
    SELECT 75049680, "aicareles/Android-BLE"
    UNION ALL
    SELECT 54940741, "EhsanTang/ApiManager"
    UNION ALL
    SELECT 75165297, "vipshop/Saturn"
    UNION ALL
    SELECT 38829639, "fabric8io/kubernetes-client"
    UNION ALL
    SELECT 2011647, "Rajawali/Rajawali"
    UNION ALL
    SELECT 54298946, "camunda-cloud/zeebe"
    UNION ALL
    SELECT 23050110, "classgraph/classgraph"
    UNION ALL
    SELECT 9278888, "openzipkin/brave"
    UNION ALL
    SELECT 158256479, "apache/iceberg"
    UNION ALL
    SELECT 133166098, "qq53182347/liugh-parent"
    UNION ALL
    SELECT 20668562, "cymcsg/UltimateAndroid"
    UNION ALL
    SELECT 2623406, "internetarchive/heritrix3"
    UNION ALL
    SELECT 3291848, "pac4j/pac4j"
    UNION ALL
    SELECT 80126792, "Muddz/StyleableToast"
    UNION ALL
    SELECT 8779606, "assertj/assertj-core"
    UNION ALL
    SELECT 68017978, "oracle/visualvm"
    UNION ALL
    SELECT 32765638, "google/santa-tracker-android"
    UNION ALL
    SELECT 166355106, "wildfirechat/android-chat"
    UNION ALL
    SELECT 144130700, "jenly1314/ZXingLite"
    UNION ALL
    SELECT 207726223, "Tencent/TubeMQ"
    UNION ALL
    SELECT 90675730, "kubernetes-client/java"
    UNION ALL
    SELECT 132121011, "aserbao/AndroidCamera"
    UNION ALL
    SELECT 233041087, "bytedance/ByteX"
    UNION ALL
    SELECT 13450509, "apilayer/restcountries"
    UNION ALL
    SELECT 62161750, "hneemann/Digital"
    UNION ALL
    SELECT 42064055, "avjinder/Minimal-Todo"
    UNION ALL
    SELECT 7393427, "jeecgboot/jeecg"
    UNION ALL
    SELECT 2183338, "spring-projects/spring-integration-samples"
    UNION ALL
    SELECT 58881448, "atomashpolskiy/bt"
    UNION ALL
    SELECT 148966413, "getActivity/ToastUtils"
    UNION ALL
    SELECT 100402355, "linkedin/cruise-control"
    UNION ALL
    SELECT 34839383, "apache/geode"
    UNION ALL
    SELECT 59115248, "egzosn/pay-java-parent"
    UNION ALL
    SELECT 3037907, "FasterXML/jackson-core"
    UNION ALL
    SELECT 107826162, "dooboolab/react-native-iap"
    UNION ALL
    SELECT 6417181, "ukanth/afwall"
    UNION ALL
    SELECT 27392543, "apache/gobblin"
    UNION ALL
    SELECT 283999274, "isl-org/OpenBot"
    UNION ALL
    SELECT 33494287, "phonegap/phonegap-plugin-push"
    UNION ALL
    SELECT 6047468, "Neamar/KISS"
    UNION ALL
    SELECT 206459, "apache/avro"
    UNION ALL
    SELECT 4726093, "soot-oss/soot"
    UNION ALL
    SELECT 1089149, "spring-projects/spring-batch"
    UNION ALL
    SELECT 29480568, "speedment/speedment"
    UNION ALL
    SELECT 260841, "novoda/android-demos"
    UNION ALL
    SELECT 1937202, "gitblit/gitblit"
    UNION ALL
    SELECT 206387, "apache/activemq"
    UNION ALL
    SELECT 20089859, "apache/mahout"
    UNION ALL
    SELECT 88962042, "TNG/ArchUnit"
    UNION ALL
    SELECT 47962772, "Yalantis/StarWars.Android"
    UNION ALL
    SELECT 26836459, "drewnoakes/metadata-extractor"
    UNION ALL
    SELECT 4449830, "sarxos/webcam-capture"
    UNION ALL
    SELECT 18993042, "bytedeco/javacpp-presets"
    UNION ALL
    SELECT 180504561, "Notsfsssf/Pix-EzViewer"
    UNION ALL
    SELECT 156599958, "corretto/corretto-8"
    UNION ALL
    SELECT 3894929, "hamcrest/JavaHamcrest"
    UNION ALL
    SELECT 140263533, "YummyLau/PanelSwitchHelper"
    UNION ALL
    SELECT 3250434, "DozerMapper/dozer"
    UNION ALL
    SELECT 4063516, "AnySoftKeyboard/AnySoftKeyboard"
    UNION ALL
    SELECT 22684655, "xerial/sqlite-jdbc"
    UNION ALL
    SELECT 86480252, "fossasia/pslab-android"
    UNION ALL
    SELECT 91698982, "noties/Markwon"
    UNION ALL
    SELECT 194844417, "zoontek/react-native-bootsplash"
    UNION ALL
    SELECT 1824050, "Wizcorp/phonegap-facebook-plugin"
    UNION ALL
    SELECT 7763363, "ratpack/ratpack"
    UNION ALL
    SELECT 379199, "tinkerpop/gremlin"
    UNION ALL
    SELECT 4610430, "ninjaframework/ninja"
    UNION ALL
    SELECT 97573661, "apache/servicecomb-pack"
    UNION ALL
    SELECT 75942758, "HelloWorld521/Java"
    UNION ALL
    SELECT 94860573, "boylegu/SpringBoot-vue"
    UNION ALL
    SELECT 36845871, "boycy815/PinchImageView"
    UNION ALL
    SELECT 46907841, "wangchenyan/ponymusic"
    UNION ALL
    SELECT 34290135, "BruceEckel/OnJava8-Examples"
    UNION ALL
    SELECT 96242277, "airsonic/airsonic"
    UNION ALL
    SELECT 97806136, "yuzhiqiang1993/zxing"
    UNION ALL
    SELECT 126145211, "liuyubobobo/Play-with-Data-Structures"
    UNION ALL
    SELECT 159273440, "shzlw/poli"
    UNION ALL
    SELECT 115579663, "yangchong211/YCVideoPlayer"
    UNION ALL
    SELECT 100753606, "confluentinc/kafka-streams-examples"
    UNION ALL
    SELECT 67479903, "scalad/Note"
    UNION ALL
    SELECT 108880251, "warkiz/IndicatorSeekBar"
    UNION ALL
    SELECT 124229309, "SpringCloud/spring-cloud-code"
    UNION ALL
    SELECT 46803767, "eclipse/eclipse-collections"
    UNION ALL
    SELECT 10917976, "psal/anonymouth"
    UNION ALL
    SELECT 2445970, "VoltDB/voltdb"
    UNION ALL
    SELECT 50572514, "LogNet/grpc-spring-boot-starter"
    UNION ALL
    SELECT 164091262, "Qihoo360/Quicksql"
    UNION ALL
    SELECT 201179882, "android/animation-samples"
    UNION ALL
    SELECT 3041887, "goldmansachs/gs-collections"
    UNION ALL
    SELECT 23505879, "deeplearning4j/nd4j"
    UNION ALL
    SELECT 317887, "liferay/liferay-portal"
    UNION ALL
    SELECT 13045763, "konsoletyper/teavm"
    UNION ALL
    SELECT 103118188, "jonashackt/spring-boot-vuejs"
    UNION ALL
    SELECT 174641743, "Antabot/White-Jotter"
    UNION ALL
    SELECT 53252346, "kanwangzjm/funiture"
    UNION ALL
    SELECT 36840131, "scouter-project/scouter"
    UNION ALL
    SELECT 7891564, "redsolution/xabber-android"
    UNION ALL
    SELECT 13062062, "torakiki/pdfsam"
    UNION ALL
    SELECT 48816368, "toolbox4minecraft/amidst"
    UNION ALL
    SELECT 17089728, "syncthing/syncthing-android"
    UNION ALL
    SELECT 141376301, "hugegraph/hugegraph"
    UNION ALL
    SELECT 260712390, "corona-warn-app/cwa-server"
    UNION ALL
    SELECT 7502247, "lealone/Lealone"
    UNION ALL
    SELECT 74747694, "baichengzhou/SpringMVC-Mybatis-Shiro-redis-0.2"
    UNION ALL
    SELECT 63053305, "a466350665/smart-sso"
    UNION ALL
    SELECT 40349599, "sanluan/PublicCMS"
    UNION ALL
    SELECT 283187, "qos-ch/slf4j"
    UNION ALL
    SELECT 93505869, "sunfusheng/GlideImageView"
    UNION ALL
    SELECT 38230607, "mabe02/lanterna"
    UNION ALL
    SELECT 59925269, "evollu/react-native-fcm"
    UNION ALL
    SELECT 20811348, "spring-cloud/spring-cloud-config"
    UNION ALL
    SELECT 99774561, "AnyChart/AnyChart-Android"
    UNION ALL
    SELECT 17224514, "ehcache/ehcache3"
    UNION ALL
    SELECT 91674936, "apache/servicecomb-java-chassis"
    UNION ALL
    SELECT 5453324, "JetBrains/intellij-plugins"
    UNION ALL
    SELECT 24217298, "logisim-evolution/logisim-evolution"
    UNION ALL
    SELECT 69588338, "tonikelope/megabasterd"
    UNION ALL
    SELECT 101451042, "gsantner/markor"
    UNION ALL
    SELECT 86149, "unclebob/fitnesse"
    UNION ALL
    SELECT 204388092, "pig-mesh/pig"
    UNION ALL
    SELECT 68089637, "xiaohaibin/XBanner"
    UNION ALL
    SELECT 112770118, "Qihoo360/XLearning"
    UNION ALL
    SELECT 186741876, "siaorg/sia-task"
    UNION ALL
    SELECT 6293402, "vaadin/framework"
    UNION ALL
    SELECT 65606855, "fossasia/open-event-organizer-android"
    UNION ALL
    SELECT 66030306, "reactor/reactor-netty"
    UNION ALL
    SELECT 102083576, "apache/netbeans"
    UNION ALL
    SELECT 29178568, "wasabeef/picasso-transformations"
    UNION ALL
    SELECT 3074850, "jlegewie/zotfile"
    UNION ALL
    SELECT 72558491, "DreamOfTheRedChamber/system-design-interviews"
    UNION ALL
    SELECT 745749, "cbeust/testng"
    UNION ALL
    SELECT 3020895, "marytts/marytts"
    UNION ALL
    SELECT 246464565, "PojavLauncherTeam/PojavLauncher"
    UNION ALL
    SELECT 55289739, "dinuscxj/RecyclerRefreshLayout"
    UNION ALL
    SELECT 146941185, "firebase/firebase-android-sdk"
    UNION ALL
    SELECT 771886, "cbeust/jcommander"
    UNION ALL
    SELECT 11845993, "stagemonitor/stagemonitor"
    UNION ALL
    SELECT 3816238, "buchen/portfolio"
    UNION ALL
    SELECT 4302287, "plutext/docx4j"
    UNION ALL
    SELECT 2934254, "jmxtrans/jmxtrans"
    UNION ALL
    SELECT 172680589, "zhkl0228/unidbg"
    UNION ALL
    SELECT 50244301, "vsch/flexmark-java"
    UNION ALL
    SELECT 13680801, "jphp-group/jphp"
    UNION ALL
    SELECT 21052744, "spring-projects/spring-session"
    UNION ALL
    SELECT 139153913, "xuexiangjys/XUpdate"
    UNION ALL
    SELECT 618681, "flyingsaucerproject/flyingsaucer"
    UNION ALL
    SELECT 2067253, "opentripplanner/OpenTripPlanner"
    UNION ALL
    SELECT 158975124, "apache/iotdb"
    UNION ALL
    SELECT 65206209, "PureDark/H-Viewer"
    UNION ALL
    SELECT 47973088, "gchq/Gaffer"
    UNION ALL
    SELECT 111906528, "fossasia/neurolab-android"
    UNION ALL
    SELECT 100704079, "dunwu/javacore"
    UNION ALL
    SELECT 8039659, "kairosdb/kairosdb"
    UNION ALL
    SELECT 223748401, "WeBankFinTech/DataSphereStudio"
    UNION ALL
    SELECT 17852385, "ysc/word"
    UNION ALL
    SELECT 63096822, "pravega/pravega"
    UNION ALL
    SELECT 27790789, "confluentinc/schema-registry"
    UNION ALL
    SELECT 7480345, "robovm/robovm"
    UNION ALL
    SELECT 162171043, "doublechaintech/scm-biz-suite"
    UNION ALL
    SELECT 459348, "jberkel/sms-backup-plus"
    UNION ALL
    SELECT 35018914, "limpoxe/Android-Plugin-Framework"
    UNION ALL
    SELECT 3669065, "open-keychain/open-keychain"
    UNION ALL
    SELECT 64172164, "flutter/flutter-intellij"
    UNION ALL
    SELECT 3978781, "aosp-mirror/platform_frameworks_support"
    UNION ALL
    SELECT 93987205, "wkeyuan/DWSurvey"
    UNION ALL
    SELECT 5683653, "apache/drill"
    UNION ALL
    SELECT 41209174, "strapdata/elassandra"
    UNION ALL
    SELECT 134252514, "SherlockGougou/BigImageViewPager"
    UNION ALL
    SELECT 26181278, "googleapis/google-cloud-java"
    UNION ALL
    SELECT 94839689, "alidili/Demos"
    UNION ALL
    SELECT 52518462, "nisrulz/android-examples"
    UNION ALL
    SELECT 13392416, "syncany/syncany"
    UNION ALL
    SELECT 43526326, "ccrama/Slide"
    UNION ALL
    SELECT 1990682, "UweTrottmann/SeriesGuide"
    UNION ALL
    SELECT 282873186, "peng-zhihui/DeepVision"
    UNION ALL
    SELECT 50906927, "tlaplus/tlaplus"
    UNION ALL
    SELECT 14370620, "xuhuisheng/lemon"
    UNION ALL
    SELECT 22486533, "00-Evan/shattered-pixel-dungeon"
    UNION ALL
    SELECT 5797013, "kermitt2/grobid"
    UNION ALL
    SELECT 19753195, "openhab/openhab-addons"
    UNION ALL
    SELECT 89476170, "yangchaojiang/ZoomPreviewPicture-"
    UNION ALL
    SELECT 195077933, "spring2go/staffjoy"
    UNION ALL
    SELECT 229738, "jdbi/jdbi"
    UNION ALL
    SELECT 98138485, "pili-engineering/PLDroidShortVideo"
    UNION ALL
    SELECT 134733282, "spring-projects-experimental/spring-fu"
    UNION ALL
    SELECT 2442457, "apache/ambari"
    UNION ALL
    SELECT 87683712, "zq2599/blog_demos"
    UNION ALL
    SELECT 14798941, "panpf/sketch"
    UNION ALL
    SELECT 14509169, "tdunning/t-digest"
    UNION ALL
    SELECT 55224431, "javahongxi/whatsmars"
    UNION ALL
    SELECT 3554148, "iiordanov/remote-desktop-clients"
    UNION ALL
    SELECT 10416648, "bcgit/bc-java"
    UNION ALL
    SELECT 1204125, "p6spy/p6spy"
    UNION ALL
    SELECT 10828921, "Netflix/genie"
    UNION ALL
    SELECT 52821506, "google/nomulus"
    UNION ALL
    SELECT 9677593, "MorphiaOrg/morphia"
    UNION ALL
    SELECT 74904432, "reneargento/algorithms-sedgewick-wayne"
    UNION ALL
    SELECT 318103, "apache/pdfbox"
    UNION ALL
    SELECT 155206197, "iSafeBlue/TrackRay"
    UNION ALL
    SELECT 267702531, "googlesamples/mlkit"
    UNION ALL
    SELECT 18128548, "fabric8io/docker-maven-plugin"
    UNION ALL
    SELECT 284279366, "GoogleLLP/SuperMarket"
    UNION ALL
    SELECT 19916900, "asciidocfx/AsciidocFX"
    UNION ALL
    SELECT 33457443, "GlowstoneMC/Glowstone"
    UNION ALL
    SELECT 31788540, "spring-cloud/spring-cloud-sleuth"
    UNION ALL
    SELECT 43598554, "uber/okbuck"
    UNION ALL
    SELECT 13870893, "linkedin/ambry"
    UNION ALL
    SELECT 178835117, "CeuiLiSA/Pixiv-Shaft"
    UNION ALL
    SELECT 35775200, "SundeepK/CompactCalendarView"
    UNION ALL
    SELECT 2948949, "BroadleafCommerce/BroadleafCommerce"
    UNION ALL
    SELECT 9133677, "1hakr/AnExplorer"
    UNION ALL
    SELECT 50372538, "GoogleCloudPlatform/community"
    UNION ALL
    SELECT 77952416, "chat-sdk/chat-sdk-android"
    UNION ALL
    SELECT 207237540, "nining377/UnblockMusicPro_Xposed"
    UNION ALL
    SELECT 51458005, "voghDev/PdfViewPager"
    UNION ALL
    SELECT 99198811, "yangchong211/YCWebView"
    UNION ALL
    SELECT 54973527, "ctripcorp/x-pipe"
    UNION ALL
    SELECT 4591214, "UniversalMediaServer/UniversalMediaServer"
    UNION ALL
    SELECT 5961751, "Automattic/simplenote-android"
    UNION ALL
    SELECT 67468634, "GeekGhost/Ghost"
    UNION ALL
    SELECT 52980493, "spring-projects/spring-kafka"
    UNION ALL
    SELECT 1963085, "java-json-tools/json-schema-validator"
    UNION ALL
    SELECT 1925457, "mendhak/gpslogger"
    UNION ALL
    SELECT 93378797, "youseries/ureport"
    UNION ALL
    SELECT 44366842, "morenoh149/react-native-contacts"
    UNION ALL
    SELECT 285531663, "bytedance/AlphaPlayer"
    UNION ALL
    SELECT 119366440, "azhon/AppUpdate"
    UNION ALL
    SELECT 218019748, "ElderDrivers/EdXposedManager"
    UNION ALL
    SELECT 41263775, "npgall/cqengine"
    UNION ALL
    SELECT 165422092, "asLody/SandHook"
    UNION ALL
    SELECT 277485800, "exadel-inc/CompreFace"
    UNION ALL
    SELECT 211431657, "vran-dev/PrettyZoo"
    UNION ALL
    SELECT 4709330, "naver/ngrinder"
    UNION ALL
    SELECT 1201104, "webbukkit/dynmap"
    UNION ALL
    SELECT 30449481, "apache/tinkerpop"
    UNION ALL
    SELECT 3376848, "selenide/selenide"
    UNION ALL
    SELECT 1575956, "apache/bookkeeper"
    UNION ALL
    SELECT 33770699, "primefaces/primefaces"
    UNION ALL
    SELECT 38098034, "pili-engineering/PLDroidMediaStreaming"
    UNION ALL
    SELECT 173552410, "WindySha/Xpatch"
    UNION ALL
    SELECT 20675636, "apache/parquet-mr"
    UNION ALL
    SELECT 218696917, "shuleisanshi/myblog"
    UNION ALL
    SELECT 65188539, "REBOOTERS/AndroidAnimationExercise"
    UNION ALL
    SELECT 44072711, "JonathanLink/PDFLayoutTextStripper"
    UNION ALL
    SELECT 36010100, "GoogleChrome/custom-tabs-client"
    UNION ALL
    SELECT 79564911, "iterate-ch/cyberduck"
    UNION ALL
    SELECT 6617845, "modesty/pdf2json"
    UNION ALL
    SELECT 25446835, "jooby-project/jooby"
    UNION ALL
    SELECT 52509220, "neo4j-contrib/neo4j-apoc-procedures"
    UNION ALL
    SELECT 259780361, "Xunzhuo/Algorithm-Guide"
    UNION ALL
    SELECT 3382195, "cloudfoundry/uaa"
    UNION ALL
    SELECT 17017355, "Telegram-FOSS-Team/Telegram-FOSS"
    UNION ALL
    SELECT 2516243, "sleuthkit/autopsy"
    UNION ALL
    SELECT 193444509, "iqiyi/Qigsaw"
    UNION ALL
    SELECT 1983092, "spring-projects/spring-data-redis"
    UNION ALL
    SELECT 71984071, "fishwjy/MultiType-FilePicker"
    UNION ALL
    SELECT 32103526, "aimacode/aima-java"
    UNION ALL
    SELECT 32895424, "GoogleCloudPlatform/java-docs-samples"
    UNION ALL
    SELECT 101376825, "youseries/urule"
    UNION ALL
    SELECT 483644, "quran/quran_android"
    UNION ALL
    SELECT 33795745, "tomoya92/pybbs"
    UNION ALL
    SELECT 52082254, "OneSignal/react-native-onesignal"
    UNION ALL
    SELECT 71305435, "VertaAI/modeldb"
    UNION ALL
    SELECT 21180741, "hapifhir/hapi-fhir"
    UNION ALL
    SELECT 86653876, "tywo45/t-io"
    UNION ALL
    SELECT 296658, "haraldk/TwelveMonkeys"
    UNION ALL
    SELECT 13407728, "katzer/cordova-plugin-background-mode"
    UNION ALL
    SELECT 2566570, "spring-projects/spring-data-mongodb"
    UNION ALL
    SELECT 18264736, "NLPchina/nlp-lang"
    UNION ALL
    SELECT 75834005, "vaquarkhan/vaquarkhan"
    UNION ALL
    SELECT 4457770, "i2p/i2p.i2p"
    UNION ALL
    SELECT 4801382, "winder/Universal-G-Code-Sender"
    UNION ALL
    SELECT 2681994, "mitreid-connect/OpenID-Connect-Java-Spring-Server"
    UNION ALL
    SELECT 12247534, "komoot/photon"
    UNION ALL
    SELECT 9215573, "mixi-inc/AndroidTraining"
    UNION ALL
    SELECT 5726012, "Pi4J/pi4j-v1"
    UNION ALL
    SELECT 98801926, "thombergs/code-examples"
    UNION ALL
    SELECT 59388335, "LuckPerms/LuckPerms"
    UNION ALL
    SELECT 15717393, "hcoles/pitest"
    UNION ALL
    SELECT 930571, "kiegroup/jbpm"
    UNION ALL
    SELECT 14892248, "itext/itextpdf"
    UNION ALL
    SELECT 35437397, "vigna/fastutil"
    UNION ALL
    SELECT 101527, "bpellin/keepassdroid"
    UNION ALL
    SELECT 10637896, "apache/logging-log4j2"
    UNION ALL
    SELECT 9054533, "graphhopper/jsprit"
    UNION ALL
    SELECT 20046106, "tabulapdf/tabula-java"
    UNION ALL
    SELECT 36487440, "gravitee-io/gravitee-gateway"
    UNION ALL
    SELECT 78039985, "wajahatkarim3/EasyFlipView"
    UNION ALL
    SELECT 70491053, "OpenVidu/openvidu"
    UNION ALL
    SELECT 53511222, "vanniktech/Emoji"
    UNION ALL
    SELECT 45526710, "danfickle/openhtmltopdf"
    UNION ALL
    SELECT 36422720, "osfans/trime"
    UNION ALL
    SELECT 94272085, "yannecer/NCalendar"
    UNION ALL
    SELECT 206368, "apache/poi"
    UNION ALL
    SELECT 4158448, "magefree/mage"
    UNION ALL
    SELECT 95247959, "aws/aws-sdk-java-v2"
    UNION ALL
    SELECT 206427, "apache/tika"
    UNION ALL
    SELECT 70994988, "kalessil/phpinspectionsea"
    UNION ALL
    SELECT 295737485, "erupts/erupt"
    UNION ALL
    SELECT 18988631, "siddhi-io/siddhi"
    UNION ALL
    SELECT 367217461, "lilishop/lilishop"
    UNION ALL
    SELECT 45755430, "Discord4J/Discord4J"
    UNION ALL
    SELECT 6966619, "hawtio/hawtio"
    UNION ALL
    SELECT 231124413, "dslul/openboard"
    UNION ALL
    SELECT 105255685, "jiangdongguo/AndroidUSBCamera"
    UNION ALL
    SELECT 130612700, "Querz/mcaselector"
    UNION ALL
    SELECT 337594329, "pppscn/SmsForwarder"
    UNION ALL
    SELECT 5793895, "ebean-orm/ebean"
    UNION ALL
    SELECT 1388190, "slapperwan/gh4a"
    UNION ALL
    SELECT 4039952, "BuildCraft/BuildCraft"
    UNION ALL
    SELECT 92929173, "dkzwm/SmoothRefreshLayout"
    UNION ALL
    SELECT 52949435, "Baeldung/spring-security-registration"
    UNION ALL
    SELECT 225005758, "Dr11ft/BigDataGuide"
    UNION ALL
    SELECT 39555898, "aliyun/aliyun-openapi-java-sdk"
    UNION ALL
    SELECT 67722017, "google/copybara"
    UNION ALL
    SELECT 225143766, "88250/symphony"
    UNION ALL
    SELECT 2209077, "JetBrains/MPS"
    UNION ALL
    SELECT 131138550, "RuffianZhong/RWidgetHelper"
    UNION ALL
    SELECT 6765281, "datastax/java-driver"
    UNION ALL
    SELECT 33801306, "cincheo/jsweet"
    UNION ALL
    SELECT 303342455, "Efaker/FakerAndroid"
    UNION ALL
    SELECT 25121397, "vladimir-bukhtoyarov/bucket4j"
    UNION ALL
    SELECT 14176513, "INRIA/spoon"
    UNION ALL
    SELECT 52983941, "linkedin/dr-elephant"
    UNION ALL
    SELECT 50209125, "klausw/hackerskeyboard"
    UNION ALL
    SELECT 101530016, "864381832/xJavaFxTool"
    UNION ALL
    SELECT 43323326, "jaredrummler/AndroidDeviceNames"
    UNION ALL
    SELECT 61399845, "synthetichealth/synthea"
    UNION ALL
    SELECT 2090979, "spring-projects/spring-integration"
    UNION ALL
    SELECT 278249682, "Haleydu/Cimoc"
    UNION ALL
    SELECT 17288475, "pedrovgs/Renderers"
    UNION ALL
    SELECT 54624511, "cuba-platform/cuba"
    UNION ALL
    SELECT 2752522, "geotools/geotools"
    UNION ALL
    SELECT 4946769, "SmartBear/soapui"
    UNION ALL
    SELECT 41903441, "Etar-Group/Etar-Calendar"
    UNION ALL
    SELECT 4634707, "Intel-bigdata/HiBench"
    UNION ALL
    SELECT 124818794, "wisdom-projects/rest-client"
    UNION ALL
    SELECT 102739855, "in28minutes/spring-microservices"
    UNION ALL
    SELECT 29557376, "aol/cyclops"
    UNION ALL
    SELECT 64185596, "ctripcorp/dal"
    UNION ALL
    SELECT 28992330, "googleapis/google-http-java-client"
    UNION ALL
    SELECT 47830485, "lopspower/CircularFillableLoaders"
    UNION ALL
    SELECT 34859215, "ongakuer/PhotoDraweeView"
    UNION ALL
    SELECT 32333558, "psi-probe/psi-probe"
    UNION ALL
    SELECT 327391, "sirthias/parboiled"
    UNION ALL
    SELECT 30310864, "spring-projects/spring-statemachine"
    UNION ALL
    SELECT 2078882, "knowm/XChart"
    UNION ALL
    SELECT 182026105, "openjdk/loom"
    UNION ALL
    SELECT 124256520, "RaiMan/SikuliX1"
    UNION ALL
    SELECT 145083653, "getActivity/TitleBar"
    UNION ALL
    SELECT 50370190, "locationtech/jts"
    UNION ALL
    SELECT 19369035, "TEAMMATES/teammates"
    UNION ALL
    SELECT 51639229, "limboemu/limbo"
    UNION ALL
    SELECT 165063056, "yuzutech/kroki"
    UNION ALL
    SELECT 50726401, "project-travel-mate/Travel-Mate"
    UNION ALL
    SELECT 33965866, "EssentialsX/Essentials"
    UNION ALL
    SELECT 190664284, "Netflix/mantis"
    UNION ALL
    SELECT 60470713, "rampatra/jbot"
    UNION ALL
    SELECT 9992330, "couchbase/couchbase-lite-android"
    UNION ALL
    SELECT 142456757, "Docile-Alligator/Infinity-For-Reddit"
    UNION ALL
    SELECT 93584426, "manifold-systems/manifold"
    UNION ALL
    SELECT 2028724, "cgeo/cgeo"
    UNION ALL
    SELECT 124754223, "wupeixuan/JDKSourceCode1.8"
    UNION ALL
    SELECT 1133930, "validator/validator"
    UNION ALL
    SELECT 88803918, "Dsiner/UIUtil"
    UNION ALL
    SELECT 102686416, "BriData/DBus"
    UNION ALL
    SELECT 13576006, "w3c/epubcheck"
    UNION ALL
    SELECT 84079834, "skydoves/ColorPickerView"
    UNION ALL
    SELECT 9938754, "opensourceBIM/BIMserver"
    UNION ALL
    SELECT 161491489, "lerry903/RuoYi"
    UNION ALL
    SELECT 203150729, "JFormDesigner/FlatLaf"
    UNION ALL
    SELECT 206402, "apache/httpcomponents-client"
    UNION ALL
    SELECT 78443736, "vivchar/RendererRecyclerViewAdapter"
    UNION ALL
    SELECT 578435, "twitter/elephant-bird"
    UNION ALL
    SELECT 252474685, "NekoX-Dev/NekoX"
    UNION ALL
    SELECT 4387088, "codinguser/gnucash-android"
    UNION ALL
    SELECT 27452807, "broadinstitute/gatk"
    UNION ALL
    SELECT 39285768, "schemacrawler/SchemaCrawler"
    UNION ALL
    SELECT 46559032, "SkyTubeTeam/SkyTube"
    UNION ALL
    SELECT 77178013, "daniel-stoneuk/material-about-library"
    UNION ALL
    SELECT 28599652, "4refr0nt/ESPlorer"
    UNION ALL
    SELECT 3372117, "ajanata/PretendYoureXyzzy"
    UNION ALL
    SELECT 60886617, "dinuscxj/CircleProgressBar"
    UNION ALL
    SELECT 32973467, "codenameone/CodenameOne"
    UNION ALL
    SELECT 80229651, "spinnaker/kayenta"
    UNION ALL
    SELECT 16381579, "MyCollab/mycollab"
    UNION ALL
    SELECT 124862112, "sofastack/sofa-ark"
    UNION ALL
    SELECT 77048353, "HanSolo/tilesfx"
    UNION ALL
    SELECT 15928650, "apache/struts"
    UNION ALL
    SELECT 103392636, "berndruecker/flowing-retail"
    UNION ALL
    SELECT 83949640, "chiclaim/AndroidAll"
    UNION ALL
    SELECT 9759448, "apache/cloudstack"
    UNION ALL
    SELECT 58516325, "zalando/intellij-swagger"
    UNION ALL
    SELECT 149351086, "tmobile/pacbot"
    UNION ALL
    SELECT 25881432, "googleapis/google-api-java-client"
    UNION ALL
    SELECT 1195705, "rkalla/imgscalr"
    UNION ALL
    SELECT 130441517, "simplepeng/SpiderMan"
    UNION ALL
    SELECT 111042175, "redhat-scholars/istio-tutorial"
    UNION ALL
    SELECT 42095567, "wasabeef/Takt"
    UNION ALL
    SELECT 62855349, "klinker24/talon-for-twitter-android"
    UNION ALL
    SELECT 57951012, "itext/itext7"
    UNION ALL
    SELECT 23770421, "SpongePowered/SpongeAPI"
    UNION ALL
    SELECT 76628259, "crazyqiang/AndroidStudy"
    UNION ALL
    SELECT 132854880, "magese/ik-analyzer-solr"
    UNION ALL
    SELECT 211710523, "blaisewang/img2latex-mathpix"
    UNION ALL
    SELECT 2740148, "apache/opennlp"
    UNION ALL
    SELECT 21221909, "nguyenq/tess4j"
    UNION ALL
    SELECT 42751387, "treasure-data/digdag"
    UNION ALL
    SELECT 4787136, "mit-cml/appinventor-sources"
    UNION ALL
    SELECT 73827854, "youlookwhat/ByWebView"
    UNION ALL
    SELECT 33421022, "zstackio/zstack"
    UNION ALL
    SELECT 114699273, "openaudible/openaudible"
    UNION ALL
    SELECT 64836131, "OpenLauncherTeam/openlauncher"
    UNION ALL
    SELECT 268006778, "MuntashirAkon/AppManager"
    UNION ALL
    SELECT 53768826, "jiang111/RxJavaApp"
    UNION ALL
    SELECT 68675293, "jishenghua/jshERP"
    UNION ALL
    SELECT 5187976, "openmrs/openmrs-core"
    UNION ALL
    SELECT 88159866, "timebusker/spring-boot"
    UNION ALL
    SELECT 110422164, "LillteZheng/ViewPagerHelper"
    UNION ALL
    SELECT 161329070, "unclezs/uncle-novel"
    UNION ALL
    SELECT 162236965, "controlsfx/controlsfx"
    UNION ALL
    SELECT 213469, "simpligility/android-maven-plugin"
    UNION ALL
    SELECT 427635, "ervandew/eclim"
    UNION ALL
    SELECT 98013453, "apache/atlas"
    UNION ALL
    SELECT 10532531, "glyptodon/guacamole-client"
    UNION ALL
    SELECT 61667990, "intuit/wasabi"
    UNION ALL
    SELECT 32464563, "SilenceIM/Silence"
    UNION ALL
    SELECT 924572, "rabbitmq/rabbitmq-java-client"
    UNION ALL
    SELECT 40029062, "sonatype/nexus-public"
    UNION ALL
    SELECT 248890809, "xaecbd/KafkaCenter"
    UNION ALL
    SELECT 99340101, "HelloChenJinJun/NewFastFrame"
    UNION ALL
    SELECT 91971028, "nikita36078/J2ME-Loader"
    UNION ALL
    SELECT 167107390, "lets-mica/mica"
    UNION ALL
    SELECT 6022685, "jcodec/jcodec"
    UNION ALL
    SELECT 50231941, "fkzhang/WechatUnrecalled"
    UNION ALL
    SELECT 128670217, "henninghall/react-native-date-picker"
    UNION ALL
    SELECT 15796819, "hsiafan/apk-parser"
    UNION ALL
    SELECT 155353360, "WeBankFinTech/WeIdentity"
    UNION ALL
    SELECT 75422566, "Netflix/hollow"
    UNION ALL
    SELECT 2928948, "Azure/azure-sdk-for-java"
    UNION ALL
    SELECT 64472007, "DragonetMC/DragonProxy"
    UNION ALL
    SELECT 2079469, "Netflix/Priam"
    UNION ALL
    SELECT 62056780, "eclipse/eclipse.jdt.ls"
    UNION ALL
    SELECT 125977047, "fly803/BaseProject"
    )
  )
);