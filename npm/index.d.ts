declare module '@apiverve/articleideas' {
  export interface articleideasOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface articleideasResponse {
    status: string;
    error: string | null;
    data: ArticleIdeasGeneratorData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface ArticleIdeasGeneratorData {
      topic:      null | string;
      topicIdeas: number | null;
      topics:     (null | string)[];
  }

  export default class articleideasWrapper {
    constructor(options: articleideasOptions);

    execute(callback: (error: any, data: articleideasResponse | null) => void): Promise<articleideasResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: articleideasResponse | null) => void): Promise<articleideasResponse>;
    execute(query?: Record<string, any>): Promise<articleideasResponse>;
  }
}
