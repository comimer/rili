.class public Lnet/fortuna/ical4j/data/CalendarOutputter;
.super Lnet/fortuna/ical4j/data/AbstractOutputter;
.source "CalendarOutputter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lnet/fortuna/ical4j/data/AbstractOutputter;-><init>()V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lnet/fortuna/ical4j/data/AbstractOutputter;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lnet/fortuna/ical4j/data/AbstractOutputter;-><init>(ZI)V

    return-void
.end method


# virtual methods
.method public final output(Lnet/fortuna/ical4j/model/Calendar;Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnet/fortuna/ical4j/validate/ValidationException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/OutputStreamWriter;

    sget-object v1, Lnet/fortuna/ical4j/data/AbstractOutputter;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {v0, p2, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-virtual {p0, p1, v0}, Lnet/fortuna/ical4j/data/CalendarOutputter;->output(Lnet/fortuna/ical4j/model/Calendar;Ljava/io/Writer;)V

    return-void
.end method

.method public final output(Lnet/fortuna/ical4j/model/Calendar;Ljava/io/Writer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnet/fortuna/ical4j/validate/ValidationException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lnet/fortuna/ical4j/data/AbstractOutputter;->isValidating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Calendar;->validate()V

    .line 4
    :cond_0
    new-instance v0, Lnet/fortuna/ical4j/data/FoldingWriter;

    iget v1, p0, Lnet/fortuna/ical4j/data/AbstractOutputter;->foldLength:I

    invoke-direct {v0, p2, v1}, Lnet/fortuna/ical4j/data/FoldingWriter;-><init>(Ljava/io/Writer;I)V

    .line 5
    :try_start_0
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Calendar;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    return-void

    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    .line 8
    :try_start_2
    invoke-virtual {v0}, Ljava/io/Writer;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p2
.end method
