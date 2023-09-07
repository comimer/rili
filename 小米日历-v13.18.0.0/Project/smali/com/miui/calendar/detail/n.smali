.class public final synthetic Lcom/miui/calendar/detail/n;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lk3/d$b;


# instance fields
.field public final synthetic a:Lcom/miui/calendar/detail/UpdateUserCardService;

.field public final synthetic b:J

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/calendar/detail/UpdateUserCardService;JILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/calendar/detail/n;->a:Lcom/miui/calendar/detail/UpdateUserCardService;

    iput-wide p2, p0, Lcom/miui/calendar/detail/n;->b:J

    iput p4, p0, Lcom/miui/calendar/detail/n;->c:I

    iput-object p5, p0, Lcom/miui/calendar/detail/n;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lcom/miui/calendar/account/mi/MiAccountSchema;)V
    .locals 6

    iget-object v0, p0, Lcom/miui/calendar/detail/n;->a:Lcom/miui/calendar/detail/UpdateUserCardService;

    iget-wide v1, p0, Lcom/miui/calendar/detail/n;->b:J

    iget v3, p0, Lcom/miui/calendar/detail/n;->c:I

    iget-object v4, p0, Lcom/miui/calendar/detail/n;->d:Ljava/lang/String;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/miui/calendar/detail/UpdateUserCardService;->b(Lcom/miui/calendar/detail/UpdateUserCardService;JILjava/lang/String;Lcom/miui/calendar/account/mi/MiAccountSchema;)V

    return-void
.end method
