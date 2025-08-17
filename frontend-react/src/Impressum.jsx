function Impressum () {
  return (
    <div className="background-desaturated">
    <div><div className="container py-4 mt-5" style={{ maxWidth: 800 }}>
        <h1 className="mb-3">Impressum</h1>

        <p><strong>Angaben gemäß § 5 TMG</strong></p>
        <p>
          Watchbase GmbH<br />
          Musterstraße 12<br />
          12345 Berlin<br />
          Deutschland
        </p>

        <p><strong>Vertreten durch:</strong><br />Maximilian Schreiber (Geschäftsführer)</p>

        <p><strong>Kontakt:</strong><br />
          Telefon: +49 176 082 45 45<br />
          E-Mail: <a href="mailto:watchbase@freenet.de">watchbase@freenet.de</a>
        </p>

        <p><strong>Registereintrag:</strong><br />
          Eintragung im Handelsregister.<br />
          Registergericht: Amtsgericht Berlin<br />
          Registernummer: HRB 123456
        </p>

        <p><strong>Umsatzsteuer-ID:</strong><br />
          Umsatzsteuer-Identifikationsnummer gemäß § 27 a Umsatzsteuergesetz: DE123456789
        </p>

        <p><strong>Verantwortlich für den Inhalt nach § 55 Abs. 2 RStV:</strong><br />
          Maximilian Schreiber<br />
          Musterstraße 12<br />
          12345 Berlin
        </p>

        <h2 className="h5 mt-4">Haftungsausschluss</h2>
        <p>
          Trotz sorgfältiger inhaltlicher Kontrolle übernehmen wir keine Haftung für die Inhalte externer Links.
          Für den Inhalt verlinkter Seiten sind ausschließlich deren Betreiber verantwortlich.
        </p>

        <h2 className="h5 mt-3">Urheberrecht</h2>
        <p>
          Die auf dieser Website veröffentlichten Inhalte unterliegen dem deutschen Urheberrecht.
          Jede Verwertung bedarf der vorherigen schriftlichen Zustimmung des jeweiligen Autors oder Erstellers.
        </p>
      </div>
    </div>
    </div>
  );
}

export default Impressum;