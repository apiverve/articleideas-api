using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.ArticleIdeasGenerator
{
    /// <summary>
    /// Query options for the Article Ideas Generator API
    /// </summary>
    public class ArticleIdeasGeneratorQueryOptions
    {
        /// <summary>
        /// The topic for which you want to generate article ideas (up to 50 characters)
        /// </summary>
        [JsonProperty("topic")]
        public string Topic { get; set; }
    }
}
