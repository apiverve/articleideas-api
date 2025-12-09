declare module '@apiverve/articleideas' {
  export interface articleideasOptions {
    api_key: string;
    secure?: boolean;
  }

  export interface articleideasResponse {
    status: string;
    error: string | null;
    data: ArticleIdeasGeneratorData;
    code?: number;
  }


  interface ArticleIdeasGeneratorData {
      topic:      string;
      topicIdeas: number;
      topics:     string[];
  }

  export default class articleideasWrapper {
    constructor(options: articleideasOptions);

    execute(callback: (error: any, data: articleideasResponse | null) => void): Promise<articleideasResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: articleideasResponse | null) => void): Promise<articleideasResponse>;
    execute(query?: Record<string, any>): Promise<articleideasResponse>;
  }
}
