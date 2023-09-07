.class public Lnet/fortuna/ical4j/model/parameter/Member;
.super Lnet/fortuna/ical4j/model/Parameter;
.source "Member.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/fortuna/ical4j/model/parameter/Member$Factory;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x3fcde4191b54c4bL


# instance fields
.field private groups:Lnet/fortuna/ical4j/model/AddressList;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 1
    new-instance v0, Lnet/fortuna/ical4j/model/AddressList;

    invoke-static {p1}, Lnet/fortuna/ical4j/util/Strings;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lnet/fortuna/ical4j/model/AddressList;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lnet/fortuna/ical4j/model/parameter/Member;-><init>(Lnet/fortuna/ical4j/model/AddressList;)V

    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/AddressList;)V
    .locals 2

    .line 2
    new-instance v0, Lnet/fortuna/ical4j/model/parameter/Member$Factory;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/parameter/Member$Factory;-><init>()V

    const-string v1, "MEMBER"

    invoke-direct {p0, v1, v0}, Lnet/fortuna/ical4j/model/Parameter;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterFactory;)V

    .line 3
    iput-object p1, p0, Lnet/fortuna/ical4j/model/parameter/Member;->groups:Lnet/fortuna/ical4j/model/AddressList;

    return-void
.end method


# virtual methods
.method public final getGroups()Lnet/fortuna/ical4j/model/AddressList;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/fortuna/ical4j/model/parameter/Member;->groups:Lnet/fortuna/ical4j/model/AddressList;

    .line 2
    .line 3
    return-object v0
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
.end method

.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/parameter/Member;->getGroups()Lnet/fortuna/ical4j/model/AddressList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/AddressList;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
.end method

.method protected isQuotable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
