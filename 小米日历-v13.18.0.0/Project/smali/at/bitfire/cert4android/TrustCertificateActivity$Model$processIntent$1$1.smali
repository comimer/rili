.class final Lat/bitfire/cert4android/TrustCertificateActivity$Model$processIntent$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "TrustCertificateActivity.kt"

# interfaces
.implements Lw7/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lat/bitfire/cert4android/TrustCertificateActivity$Model;->processIntent(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lw7/a<",
        "Lkotlin/u;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0003\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Lkotlin/u;",
        "invoke",
        "()V",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field final synthetic $raw:[B

.field final synthetic this$0:Lat/bitfire/cert4android/TrustCertificateActivity$Model;


# direct methods
.method constructor <init>([BLat/bitfire/cert4android/TrustCertificateActivity$Model;)V
    .locals 0

    iput-object p1, p0, Lat/bitfire/cert4android/TrustCertificateActivity$Model$processIntent$1$1;->$raw:[B

    iput-object p2, p0, Lat/bitfire/cert4android/TrustCertificateActivity$Model$processIntent$1$1;->this$0:Lat/bitfire/cert4android/TrustCertificateActivity$Model;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lat/bitfire/cert4android/TrustCertificateActivity$Model$processIntent$1$1;->invoke()V

    sget-object v0, Lkotlin/u;->a:Lkotlin/u;

    return-object v0
.end method

.method public final invoke()V
    .locals 7

    .line 2
    sget-object v0, Lat/bitfire/cert4android/TrustCertificateActivity$Model;->Companion:Lat/bitfire/cert4android/TrustCertificateActivity$Model$Companion;

    invoke-virtual {v0}, Lat/bitfire/cert4android/TrustCertificateActivity$Model$Companion;->getCertFactory()Ljava/security/cert/CertificateFactory;

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lat/bitfire/cert4android/TrustCertificateActivity$Model$processIntent$1$1;->$raw:[B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    instance-of v1, v0, Ljava/security/cert/X509Certificate;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/security/cert/X509Certificate;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getIssuerAlternativeNames()Ljava/util/Collection;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 5
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectAlternativeNames()Ljava/util/Collection;

    move-result-object v3

    if-nez v3, :cond_2

    invoke-static {}, Lkotlin/collections/t;->j()Ljava/util/List;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 6
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 7
    instance-of v6, v5, Ljava/lang/String;

    if-eqz v6, :cond_3

    const-string v6, "["

    .line 8
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 9
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 10
    :cond_5
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v1

    invoke-interface {v1}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v1

    .line 11
    :goto_2
    iget-object v3, p0, Lat/bitfire/cert4android/TrustCertificateActivity$Model$processIntent$1$1;->this$0:Lat/bitfire/cert4android/TrustCertificateActivity$Model;

    invoke-virtual {v3}, Lat/bitfire/cert4android/TrustCertificateActivity$Model;->getIssuedFor()Landroidx/lifecycle/u;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroidx/lifecycle/u;->l(Ljava/lang/Object;)V

    .line 12
    iget-object v1, p0, Lat/bitfire/cert4android/TrustCertificateActivity$Model$processIntent$1$1;->this$0:Lat/bitfire/cert4android/TrustCertificateActivity$Model;

    invoke-virtual {v1}, Lat/bitfire/cert4android/TrustCertificateActivity$Model;->getIssuedBy()Landroidx/lifecycle/u;

    move-result-object v1

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/lifecycle/u;->l(Ljava/lang/Object;)V

    .line 13
    invoke-static {v2}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v1

    .line 14
    iget-object v2, p0, Lat/bitfire/cert4android/TrustCertificateActivity$Model$processIntent$1$1;->this$0:Lat/bitfire/cert4android/TrustCertificateActivity$Model;

    invoke-virtual {v2}, Lat/bitfire/cert4android/TrustCertificateActivity$Model;->getValidFrom()Landroidx/lifecycle/u;

    move-result-object v2

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getNotBefore()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/lifecycle/u;->l(Ljava/lang/Object;)V

    .line 15
    iget-object v2, p0, Lat/bitfire/cert4android/TrustCertificateActivity$Model$processIntent$1$1;->this$0:Lat/bitfire/cert4android/TrustCertificateActivity$Model;

    invoke-virtual {v2}, Lat/bitfire/cert4android/TrustCertificateActivity$Model;->getValidTo()Landroidx/lifecycle/u;

    move-result-object v2

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroidx/lifecycle/u;->l(Ljava/lang/Object;)V

    .line 16
    iget-object v1, p0, Lat/bitfire/cert4android/TrustCertificateActivity$Model$processIntent$1$1;->this$0:Lat/bitfire/cert4android/TrustCertificateActivity$Model;

    invoke-virtual {v1}, Lat/bitfire/cert4android/TrustCertificateActivity$Model;->getSha1()Landroidx/lifecycle/u;

    move-result-object v1

    iget-object v2, p0, Lat/bitfire/cert4android/TrustCertificateActivity$Model$processIntent$1$1;->this$0:Lat/bitfire/cert4android/TrustCertificateActivity$Model;

    sget-object v3, Ljava/security/spec/MGF1ParameterSpec;->SHA1:Ljava/security/spec/MGF1ParameterSpec;

    invoke-virtual {v3}, Ljava/security/spec/MGF1ParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SHA1.digestAlgorithm"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v0, v3}, Lat/bitfire/cert4android/TrustCertificateActivity$Model;->access$fingerprint(Lat/bitfire/cert4android/TrustCertificateActivity$Model;Ljava/security/cert/X509Certificate;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/lifecycle/u;->l(Ljava/lang/Object;)V

    .line 17
    iget-object v1, p0, Lat/bitfire/cert4android/TrustCertificateActivity$Model$processIntent$1$1;->this$0:Lat/bitfire/cert4android/TrustCertificateActivity$Model;

    invoke-virtual {v1}, Lat/bitfire/cert4android/TrustCertificateActivity$Model;->getSha256()Landroidx/lifecycle/u;

    move-result-object v1

    iget-object v2, p0, Lat/bitfire/cert4android/TrustCertificateActivity$Model$processIntent$1$1;->this$0:Lat/bitfire/cert4android/TrustCertificateActivity$Model;

    sget-object v3, Ljava/security/spec/MGF1ParameterSpec;->SHA256:Ljava/security/spec/MGF1ParameterSpec;

    invoke-virtual {v3}, Ljava/security/spec/MGF1ParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SHA256.digestAlgorithm"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v0, v3}, Lat/bitfire/cert4android/TrustCertificateActivity$Model;->access$fingerprint(Lat/bitfire/cert4android/TrustCertificateActivity$Model;Ljava/security/cert/X509Certificate;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/lifecycle/u;->l(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 18
    sget-object v1, Lat/bitfire/cert4android/Constants;->INSTANCE:Lat/bitfire/cert4android/Constants;

    invoke-virtual {v1}, Lat/bitfire/cert4android/Constants;->getLog()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Couldn\'t parse certificate"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    return-void
.end method
