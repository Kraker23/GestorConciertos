﻿using System;
using System.Collections.Generic;
using System.Text.Json.Serialization;

namespace GestorConciertos.Shared.DataApi
{

    public class Artist
    {
        public long id { get; set; }
        public string name { get; set; }
        public string link { get; set; }
        public string picture { get; set; }
        public string picture_small { get; set; }
        public string picture_medium { get; set; }
        public string picture_big { get; set; }
        public string picture_xl { get; set; }
        public string tracklist { get; set; }
        public string type { get; set; }

    }
    public class Album
    {
        public long id { get; set; }
        public string title { get; set; }
        public string cover { get; set; }
        public string cover_small { get; set; }
        public string cover_medium { get; set; }
        public string cover_big { get; set; }
        public string cover_xl { get; set; }
        public string md5_image { get; set; }
        public string tracklist { get; set; }
        public string type { get; set; }

    }
    public class CancionCantante
    {
        public long id { get; set; }
        public bool readable { get; set; }
        public string title { get; set; }
        public string title_short { get; set; }
        public string title_version { get; set; }
        public string link { get; set; }
        public long duration { get; set; }
        public long rank { get; set; }
        public bool explicit_lyrics { get; set; }
        public long explicit_content_lyrics { get; set; }
        public long explicit_content_cover { get; set; }
        public string preview { get; set; }
        public string md5_image { get; set; }
        public Artist artist { get; set; }
        public Album album { get; set; }
        public string type { get; set; }

    }
    public class ResultadoBusqueda
    {
        public IList<CancionCantante> data { get; set; }
        public long total { get; set; }
        public string next { get; set; }

    }
}


